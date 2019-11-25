<!DOCTYPE HTML>
<?php
// On se connecte à la base donnée
include 'assets/include/connectBDD.php';
// On récupère l'identifiant choisi
if(isset($_GET['cardId']) AND !empty($_GET['cardId']) AND $_GET['cardId'] > 0)
{
  // On sécurise les données
  $cardId = htmlspecialchars($_GET['cardId']);
  $req = $bdd->prepare("SELECT * FROM card WHERE cardId = ?");
  $req->execute(array($cardId));
  $cur = $req->fetch();
  if($cur['cardId'] == $cardId)
  {

?>
<!--
	Site internet Créé par AUTHEMAN Victor
-->
<html>
	<head>
		<title>Edit : <?php echo $cur['cardNom']; ?></title>
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
						<a href="index.php" class="logo"><img width="30px" src="images/logo.png"><strong>AUTHEMAN</strong> <span>Victor</span></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<?php include 'assets/include/nav.php'; ?>

				<!-- Main -->
					<div id="main" class="alt">
						<!-- One -->
            <?php
            if(isset($_SESSION['user']) AND $_SESSION['user'] == "admin")
            {
            ?>
							<section class="container-fluid" id="one">
                <div class="inner">
                  <header class="memento major">
                    <h1>Edition : <?php echo $cur['cardNom']; ?></h1>
                  </header>
                  <form action="#" method="post">
                    <input type="text" name="nom" placeholder="Titre de la carte" value="<?php if(isset($cur['cardNom'])){echo $cur['cardNom'];} ?>">
                    <input type="text" name="description" placeholder="Description de la carte" value="<?php if(isset($cur['cardDesc'])){echo $cur['cardDesc'];} ?>">
                    <input type="url" name="lien" placeholder="Lien de la carte" value="<?php if(isset($cur['cardURL'])){echo $cur['cardURL'];} ?>">
                    <textarea name="contenu"><?php if(isset($cur['cardContenu'])){echo $cur['cardContenu'];} ?></textarea><br>
                    <script>
                      CKEDITOR.replace( 'contenu' );
                    </script>
                    <input name="utiliser" type="submit" value="Mettre à jour" class="primary" />
                    <?php
                    // On verifi si l'utilisateur à bien cliqué sur le bouton
                    if(isset($_POST['nom']))
                    {
                      $nom = htmlspecialchars($_POST['nom']);
                      $update = $bdd->prepare("UPDATE card SET cardNom = ? WHERE cardId = ?");
                      $update->execute(array($nom, $cardId));
                    }

                    if(isset($_POST['description']))
                    {
                      $description = htmlspecialchars($_POST['description']);
                      $update = $bdd->prepare("UPDATE card SET cardDesc = ? WHERE cardId = ?");
                      $update->execute(array($description, $cardId));
                    }

                    if(isset($_POST['lien']))
                    {
                      $lien = htmlspecialchars($_POST['lien']);
                      $update = $bdd->prepare("UPDATE card SET cardURL = ? WHERE cardId = ?");
                      $update->execute(array($lien, $cardId));
                    }

                    if(isset($_POST['contenu']))
                    {
                      $contenu = $_POST['contenu'];
                      $update = $bdd->prepare("UPDATE card SET cardContenu = ? WHERE cardId = ?");
                      $update->execute(array($contenu, $cardId));
                    }
                    ?>
                  </form>
                </div>
              </section>
            <?php
            }
            ?>

				<!-- Contact -->
					<?php //include 'assets/include/contact.php'; ?>

				<!-- Footer -->
					<?php //include 'assets/include/footer.html'; ?>

			</div>
      <?php
      // fermeture du if
    } else header("Location: portfolioDisplay.php?portId=".$cur['portId']); //echo "Il n'existe pas de $cardId";
  } else header("Location: portfolioDisplay.php?portId=".$cur['portId']);
      ?>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
<?php
if(isset($_POST['utiliser']))
{
  header("Location: portfolioDisplay.php?portId=".$cur['portId']);
}
?>
<?php/*
} else{
  header('Location: connexion.php?page=card');
}*/
?>
