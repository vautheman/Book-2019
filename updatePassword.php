<!DOCTYPE HTML>
<?php
// On se connecte à la base donnée
include 'assets/include/connectBDD.php';
// On vérifie si la session
if(isset($_SESSION['sendMsg']) AND isset($_GET['id']) AND isset($_GET['mail']) AND !empty($_GET['id']) AND !empty($_GET['mail']))
{
  // On sécurise les valeurs
  $id = htmlspecialchars($_GET['id']);
  $mail = htmlspecialchars($_GET['mail']);

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
	</head>
	<body class="is-preload" onselectstart="return false" oncontextmenu="return false" ondragstart="return false">
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
							<section class="container-fluid" id="one">
                <div class="inner">
                  <header class="memento major">
                    <h1>Changement Mot de passe</h1>
                  </header>
                  <form action="#" method="get">
                    <input type="password" name="password" placeholder="Nouveau mot de passe">
                    <input type="password" name="password2" placeholder="Confirmation du mot de passe">
                    <input type="submit" class="button primary" value="Mettre à jour">
                  </form>
                  <?php
                    if(isset($_GET['password']) AND isset($_GET['password2']) AND !empty($_GET['password']) AND !empty($_GET['password2']))
                    {
                      // On sécurise les valeurs
                      $password = $_GET['password'];
                      $password2 = $_GET['password2'];

                      if($password == $password2)
                      {
                        $password = sha1($password);
                        $req = $bdd->prepare("UPDATE membres SET memMotDePasse=? WHERE memId = ?");
                        $req->execute(array($password, $id));
                      } else echo "Erreur : les deux mot de passe ne correspondent pas !";
                    }
                  ?>
                </div>
              </section>

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
<?php } ?>
