<!DOCTYPE HTML>
<?php
// On se connecte à la base donnée
include 'include/connectBDD.php';
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
					<?php include 'include/nav.php'; ?>

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
                    <h1>Modification de la section : <?php echo $cur['portNom']; ?></h1>
                  </header>
                  <form class="" action="#" method="post">
                    <input type="text" name="nom" placeholder="Nouveau nom" value="<?php if(isset($cur['portNom'])){echo $cur['portNom'];} ?>">
                    <textarea type="text" name="description" placeholder="Nouvelle description"><?php if(isset($cur['portDesc'])){echo $cur['portDesc'];} ?></textarea>
                    <input type="text" name="image" placeholder="Nouvelle image" value="<?php if(isset($cur['portImage'])){echo $cur['portImage'];} ?>">
                    <input type="url" name="mementoURL" placeholder="Nouveau lien memento" value="<?php if(isset($cur['portMementoURL'])){echo $cur['portMementoURL'];} ?>">
                    <input type="text" name="ancre" placeholder="Nouvelle Ancre" value="<?php if(isset($cur['portAncre'])){echo $cur['portAncre'];} ?>"><br>
                    <input type="submit" value="Mettre à jour" class="primary">
                    <?php
                    // On verifi si l'utilisateur à bien cliqué sur le bouton
                    if(isset($_POST['nom']))
                    {
                      $nom = htmlspecialchars($_POST['nom']);
                      $update = $bdd->prepare("UPDATE portfolio SET portNom = ? WHERE portId = ?");
                      $update->execute(array($nom, $portId));
                      header("Location: portfolio.php");
                    }

                    if(isset($_POST['description']))
                    {
                      $description = htmlspecialchars($_POST['description']);
                      $update = $bdd->prepare("UPDATE portfolio SET portDesc = ? WHERE portId = ?");
                      $update->execute(array($description, $portId));
                      header("Location: portfolio.php");
                    }

                    if(isset($_POST['image']))
                    {
                      $image = htmlspecialchars($_POST['image']);
                      $update = $bdd->prepare("UPDATE portfolio SET portImage = ? WHERE portId = ?");
                      $update->execute(array($image, $portId));
                      header("Location: portfolio.php");
                    }

                    if(isset($_POST['mementoURL']))
                    {
                      $mementoURL = htmlspecialchars($_POST['mementoURL']);
                      $update = $bdd->prepare("UPDATE portfolio SET portMementoURL = ? WHERE portId = ?");
                      $update->execute(array($mementoURL, $portId));
                      header("Location: portfolio.php");
                    }

                    if(isset($_POST['ancre']))
                    {
                      $ancre = htmlspecialchars($_POST['ancre']);
                      $update = $bdd->prepare("UPDATE portfolio SET portAncre = ? WHERE portId = ?");
                      $update->execute(array($ancre, $portId));
                      header("Location: portfolio.php");
                    }
                    ?>
                  </form>
                </div>
              </section>
            <?php
            }
            ?>

				<!-- Contact -->
					<?php //include 'include/contact.php'; ?>

				<!-- Footer -->
					<?php //include 'include/footer.html'; ?>

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

	</body>
</html>
<?php/*
} else{
  header('Location: connexion.php?page=portfolio');
}*/
?>
