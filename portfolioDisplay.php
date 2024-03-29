<!DOCTYPE HTML>
<?php
// On se connecte à la base donnée
include 'assets/include/connectBDD.php';
// On récupère l'identifiant choisi
if(isset($_GET['portId']) AND !empty($_GET['portId']) AND $_GET['portId'] > 0)
{
  // On sécurise les données
  $portId = htmlspecialchars($_GET['portId']);
  $req = $bdd->prepare("SELECT * FROM portfolio WHERE portId = ?");
  $req->execute(array($portId));
  $cur = $req->fetch();
  if($cur['portId'] == $portId)
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
    <script src="https://cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>
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
							<section class="container-fluid" id="one">
                <div class="inner">
                  <header class="memento major">
                    <h1><?php echo $cur['portNom']; ?></h1>
                    <a class="button" href="<?php echo $cur['portMementoURL']; ?>">Memento</a>
                  </header>
                  <p class="portDesc"><?php echo $cur['portDesc']; ?></p>
                  <div class="row">
                  <?php
                  $reqCard = $bdd->prepare("SELECT * FROM card WHERE portId = ?");
                  $reqCard->execute(array($portId));
                  while($curCard = $reqCard->fetch())
                  {
                  ?>
                    <div class="column-4 column-12-medium">
                      <div class="carte">
                        <div class="container text-left">
                         <h4><b><?php echo $curCard['cardNom']; ?></b></h4>
                         <p><?php echo substr($curCard['cardDesc'], 0, 70).'...'; ?></p>
                        <ul class="actions">
                          <?php
                          //  Récupèration du nombre de commentaire
                          $reqCom = $bdd->prepare("SELECT * FROM commentaires WHERE comCard = ?");
                          $reqCom->execute(array($curCard['cardId']));
                          $nbCom = 0;
                          ?>
                          <li><i class="fas fa-comment-alt"></i> <?php while($curCom = $reqCom->fetch()){$nbCom++;} echo $nbCom; ?></li>
                          <li><i class="fas fa-calendar-alt"></i> <?php $date=date_create($curCard['cardDate']); echo date_format($date, 'd/m/Y'); ?></li>
                        </ul>
                        <ul class="actions">
                         <li><a target="_blank" href="article.php?id=<?php echo $curCard['cardId']; ?>" class="button">Consulter</a></li>
                         <div>
                           <li style="display: inline-block;"><a style="border: none !important; bottom:0;" title="Télécharger" target="_blank" href="<?php echo $curCard['cardURL']; ?>"><i class="fas fa-external-link-alt fa-lg"></i></a></li>
                           <?php if(isset($_SESSION['user']) AND $_SESSION['user'] == "admin"){ ?>
                           <li style="display: inline-block;"><a style="border: none !important; bottom:0;" href="cardModif.php?cardId=<?php echo $curCard['cardId']; ?>" class="text-warning"><i class="fas fa-edit fa-lg"></i></a></li>
                           <li style="display: inline-block;"><a style="border: none !important; bottom:0;" href="cardSuppr.php?cardId=<?php echo $curCard['cardId']; ?>" class="text-danger"><i class="fas fa-trash fa-lg"></i></a></li>
                           <?php } ?>
                         </div>
                       </ul>
                       </div>
                      </div>
                    </div>
                <?php } // fin de la boucle ?>
                  </div>
                </div>
							</section>
              <?php
              if(isset($_SESSION['user']) AND $_SESSION['user'] == "admin")
              {
              ?>
              <section>
                <div class="inner">
                  <header class="major">
                    <h2>Ajouter une carte</h2>
                  </header>
                  <form action="#" method="post">
                    <input type="text" required name="titre" placeholder="Titre de la carte">
                    <input type="text" required name="description" placeholder="Description de la carte">
                    <input type="url" required name="lien" placeholder="Lien de la carte">
                    <textarea name="contenu"></textarea><br>
                    <script>
                      CKEDITOR.replace( 'contenu' );
                    </script>
                    <input type="submit" value="Publier" class="primary" />
                    <?php
                    // On vérifi si les valeurs existent
                    if(isset($_POST['titre']) AND isset($_POST['description']) AND isset($_POST['lien']) AND isset($_POST['contenu']))
                    {
                      // On sécurise les valeurs
                      $titre = htmlspecialchars($_POST['titre']);
                      $description = htmlspecialchars($_POST['description']);
                      $lien = htmlspecialchars($_POST['lien']);
                      $contenu = $_POST['contenu'];
                      // On vérifi si les variables ne sont pas vides
                      if(!empty($titre) AND !empty($description) AND !empty($lien) AND !empty($contenu))
                      {
                        // On récupère l'id de la section pour la sauvegarder dans une variable
                        $portId = htmlspecialchars($_GET['portId']);
                        // On ajoute les valeurs dans la base de donnée
                        $req = $bdd->prepare("INSERT INTO card(cardNom, cardDesc, cardURL, cardContenu, portId) VALUES(?, ?, ?, ?, ?)");
                        $req->execute(array($titre, $description, $lien, $contenu, $portId));
                        header("Location: portfolioDisplay.php?portId=".$portId);
                      }
                    }
                    ?>
                  </form>
                </div>
              </section>
            <?php } ?>


				<!-- Contact -->
					<?php include 'assets/include/contact.php'; ?>

				<!-- Footer -->
					<?php include 'assets/include/footer.html'; ?>

			</div>
      <?php
      // fermeture du if
    } else header("Location: portfolio.php"); //echo "Il n'existe pas de $portId";
    } else header("Location: portfolio.php");
      ?>

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
<?php/*
} else{
  header('Location: connexion.php?page=portfolio');
}*/
?>
