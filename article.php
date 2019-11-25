<!DOCTYPE HTML>
<?php
// On se connecte à la base donnée
include 'assets/include/connectBDD.php';
// On récupère l'identifiant choisi

if(isset($_GET['id']) AND !empty($_GET['id']))
{
?>
<!--
	Site internet Créé par AUTHEMAN Victor
-->
<html>
	<head>
		<title>Portfolio</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="icon" href="images/favicon.ico" />
		<!-- CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/style.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<!-- SCRIPT -->
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	</head>
	<body class="is-preload" onselectstart="return false" oncontextmenu="return false" ondragstart="return false">
		<!--<div class="loader">
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script type="text/javascript">
				$(window).load(function () {
						$(".loader").fadeOut("1000");

				})
		</script>
		<div class="loader_text">CHARGEMENT</div>
	</div>-->
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
				<!-- Note: The "styleN" class below should match that of the banner element. -->
					<header id="header">
						<?php include 'assets/include/header.php'; ?>
					</header>

				<!-- Menu -->
					<?php include 'assets/include/nav.php'; ?>

				<!-- Main -->
					<div id="main" class="alt">

						<!-- One -->
            <?php
            $req = $bdd->prepare("SELECT * FROM card WHERE cardId = ?");
            $req->execute(array($_GET['id']));
            $cur = $req->fetch();
            ?>

            <style media="screen">
              div.article img{
                width: 100% !important;
                height: auto !important;
              }
            </style>
            <div class="container article" style="margin-top: 50px; margin-bottom: 100px;">
              <div class="text-left row justify-content-between">
                <div class="col-lg-9 col-sm-12 p-4 mb-4" style="background: #2a2f4a;">
                  <div class="row m-0 mb-4">
                    <div class="col float-left p-0">
                      <?php
											$reqPrev = $bdd->prepare("SELECT * FROM card WHERE cardId<? ");
                      $reqPrev->execute(array($_GET['id']));
                      $curPrev = $reqPrev->fetch();
											if(!empty($curPrev[0]))
											{
											?>
												<a class="float-left border-0" href="article.php?id=<?php echo $curPrev[0]; ?>"><i class="fas fa-arrow-left mr-2"></i> <?php echo $curPrev['cardNom']; ?></a>
											<?php } ?>
                    </div>
                    <div class="col">
                      <?php
                      $reqNext = $bdd->prepare("SELECT * FROM card WHERE cardId>? ");
                      $reqNext->execute(array($_GET['id']));
                      $curNext = $reqNext->fetch();
											if(!empty($curNext[0]))
											{
											?>
												<a class="float-right border-0" href="article.php?id=<?php echo $curNext[0]; ?>"><?php echo $curNext['cardNom']; ?> <i class="fas fa-arrow-right ml-2"></i></a>
											<?php } ?>
                    </div>
                  </div>
                  <div class="inner">
                    <header class="major inline">
                      <h1><?php echo $cur['cardNom']; ?></h1>
                      <a href="#espace-commentaires" class="scrolly">Voir les commentaires</a>
                    </header>
                    <div>
                      <ul class="actions">
                        <li><a class="button" target="_blank" href="<?php echo $cur['cardURL']; ?>">Télécharger</a></li>
												<?php if(isset($_SESSION['id'])){ ?>
                        <li><a class="button primary" href="cardModif.php?cardId=<?php echo $cur['cardId']; ?>">Modifier</a></li>
                        <li><a class="button primary" href="cardSuppr.php?cardId=<?php echo $cur['cardId']; ?>">Supprimer</a></li>
											<?php } ?>
                      </ul>
                    </div>
                    <?php echo $cur['cardContenu']; ?>

                    <!-- ESPACE COMMENTAIRE -->
                    <?php

        						if(isset($_POST['submitCommentaire']))
        						{
        							if(isset($_SESSION['user'], $_POST['commentaire'], $_POST['title']) AND !empty($_SESSION['user']) AND !empty($_POST['commentaire']) AND !empty($_POST['title']))
        							{
        								$user = htmlspecialchars($_SESSION['user']);
        								$commentaire = htmlspecialchars($_POST['commentaire']);
        								$title = htmlspecialchars($_POST['title']);

        								$reqUser = $bdd->prepare("SELECT * FROM commentaires WHERE comUser = ? AND comCard = ?");
        								$reqUser->execute(array($user, $_GET['id']));
        								$userExist = $reqUser->rowCount();
        								if($userExist == 5)
        								{
        									$c_erreur = "Vous avez atteint votre cota de commentaire !";
        								} else {
                          // On récupère la section qu'apartient la card
                          $reqSection = $bdd->prepare("SELECT portNom FROM portfolio NATURAL JOIN card WHERE cardId = ?");
                          $reqSection->execute(array($_GET["id"]));
                          $curSection = $reqSection->fetch();
                          $date = date('Y-m-d');
        									$ins = $bdd->prepare('INSERT INTO commentaires (comUser, comTitle, comTexte, comDate, comType, comCard) VALUES (?, ?, ?, ?, ?, ?)');
        									$ins->execute(array($user, $title, $commentaire, $date, $curSection[0], $_GET['id']));
        									$c_message = "Votre commentaire a bien été posté !";
        								}
        							} else {
        								$c_erreur = "Tous les champs doivent être complétés";
        							}
        						}

        						$commentaire = $bdd->prepare('SELECT * FROM commentaires WHERE comCard = ? ORDER BY comId desc');
        						$commentaire->execute(array($_GET['id']));
        						?>
                    <header class="major">
                      <h2 id="espace-commentaires">Espace commentaires</h2>
                    </header>
                    <h3>Règlement</h3>
    								<p>- Écrire dans un français correct - Respecter les autres - Pas de pubs et de spams - 5 Commentaires maximum</p>
    								<?php
    								if(isset($_SESSION['user']))
    								{
    								?>
    								<form action="#commentaire" id="commentaire" method="post">
    									<label for="title">Quel titre</label>
    									<input type="text" name="title" id="title"><br>
    									<label for="commentaire">Votre commentaire</label>
    									<textarea name="commentaire"></textarea><br>
    									<input type="submit" name="submitCommentaire" value="Poster">
    								</form>
    							<?php
    							}
    							if(isset($c_message))
    							{
    								?>
    								<div class="alert alert-success" role="alert">
    									<?php echo $c_message;?>
    								</div>
    								<?php
    							}
    							if(isset($c_erreur))
    							{
    								?>
    								<div class="alert alert-danger" role="alert">
    									<?php echo $c_erreur;?>
    								</div>
    								<?php
    							}
    							?>
    							<br>
    							<?php
    							while($c=$commentaire->fetch())
    							{
    								?>
    								<b><i class="fas fa-user"></i>  <?= $c['comUser'] ?></b> -
    								<?= $c['comTitle'] ?><br>
    								<?= $c['comTexte'] ?><br>
                    <?= $c['comDate'] ?><br><hr>
    								<?php
    							}
    							?>
                  </div>
                </div>
                <div class="p-2 col col-sm ml-4" style="background: #2a2f4a;">
                  <div class="tuto">
                    <h4>Tutoriels récents</h4>
                    <ul class="alt" style="font-size: 12pt;">
                      <?php
                      $reqTuto = $bdd->prepare("SELECT * FROM card ORDER BY cardId desc LIMIT 5");
                      $reqTuto->execute();
                      while($curTuto = $reqTuto->fetch())
                      {
                        ?>
                        <li><a href="<?php echo $curTuto['cardURL']; ?>"><?php echo $curTuto['cardNom']; ?></a></li>
                        <?php
                      }
                      ?>
                  </div>
                  <div class="commentaires">
                    <h4>Commentaires récents</h4>
                    <ul class="alt" style="font-size: 12pt;">
                      <?php
                      $reqCom = $bdd->prepare("SELECT * FROM commentaires ORDER BY comId desc LIMIT 5");
                      $reqCom->execute();
                      while($curCom = $reqCom->fetch())
                      {
                        ?>
                        <li style="word-wrap: break-word;"><b><?php echo $curCom['comUser'];?> : <?php echo $curCom['comType']; ?><br></b> <?php echo $curCom['comTexte']; ?><br></li>
                        <?php
                      }
                      ?>
                    </ul>
                  </div>

                  <div class="connecte">
                    <h4>Restez connecté</h4>
                    <ul class="icons">
											<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
											<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
											<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
											<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
											<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
											<li><a href="#" class="icon brands fa-tumblr"><span class="label">Tumblr</span></a></li>
										</ul>
                  </div>

                </div>
              </div>
            </div>




				<!-- Contact -->
					<?php include 'assets/include/contact.php'; ?>

				<!-- Footer -->
					<?php include 'assets/include/footer.html'; ?>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
      <script src="https://kit.fontawesome.com/3ba462b0e4.js" crossorigin="anonymous"></script>

	</body>
</html>
<?php
} else{
  header('Location: portfolio.php');
}
?>
