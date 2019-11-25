<?php
include 'assets/include/connectBDD.php';

if(isset($_GET['user'], $_GET['key']) AND !empty($_GET['user']) AND !empty($_GET['key']))
{
  $user = htmlspecialchars(urldecode($_GET['user']));
  $key = htmlspecialchars($_GET['key']);

  $reqUser = $bdd->prepare("SELECT * FROM membres WHERE memUtilisateur = ? AND memKey = ?");
  $reqUser->execute(array($user, $key));
  $userExist = $reqUser->rowCount();

  if($userExist == 1)
  {
    $user = $reqUser->fetch();
    if($user['memConfirme'] == 0)
    {
      $updateUser = $bdd->prepare("UPDATE membres SET memConfirme = 1 WHERE memKey = ?");
      $updateUser->execute(array($key));
      $message = "Votre compte à bien été confirmé !";
      $messageConnexion = 'Vous pouvez vous connecter en cliquant <a href="connexion.php?page=index">ici</a>';
    } else {
      $message = "Votre compte à déjà été confirmé !";
    }
  } else {
    $message =   "L'utilisateur n'existe pas !";
  }
} else {
  header('Location: inscription.php');
}

?>

<!DOCTYPE HTML>
<!--
	Site internet Créé par AUTHEMAN Victor
-->
<html>
	<head>
		<title>A Propos</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="assets/css/style.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
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
							<section id="one">
								<div class="inner">
                  <header class="major">
                    <h1>
                      <?php
                      if(isset($message)){
                        echo $message;
                      }
                      ?>
                    </h1>
                    <p>
                      <?php
                      if(isset($messageConnexion)){
                        echo $messageConnexion;
                      }
                      ?>
                    </p>
                  </header>
                </div>
							</section>

					</div>

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

	</body>
</html>
