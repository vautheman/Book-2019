<!DOCTYPE HTML>
<?php include 'assets/include/connectBDD.php'; ?>
<!--
	Site internet Créé par AUTHEMAN Victor
-->
<html>
	<head>
		<title>Mot de passe oublié</title>
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
					<?php include 'assets/assets/include/nav.php'; ?>

				<!-- Main -->
					<div id="main" class="alt">
						<!-- One -->
						<section class="container-fluid" id="one">
              <div class="inner">
                <header class="memento major">
                  <h1>Mot de passe oublié</h1>
                </header>
                <?php if(!isset($_GET['user']) OR empty($_GET['user'])){ ?>
                  <form action="#" method="get">
                    <div class="inscription">
                      <?php if(isset($_SESSION['erreurMsg'])){ ?>
                        <div class="alert alert-warning" role="alert">
                          <?php echo $_SESSION['erreurMsg']; ?>
                        </div>
                      <?php } ?>
                      <label for="user">Saisir votre nom d'utilisateur :</label>
                      <input id="user" type="text" name="user"><br>
                      <input type="submit" name="" value="Suivant">
                    </div>
                  </form>
                <?php
                  }
                  if(isset($_GET['user']) AND !empty($_GET['user']))
                  {
                    // On sécurise les valeurs
                    $user = htmlspecialchars($_GET['user']);
                    // On vérifi si les valeurs existent dans la base de donnée
                    $req = $bdd->prepare("SELECT * FROM membres WHERE memUtilisateur = ?");
                    $req->execute(array($user));
                    $cur = $req->fetch();
                    // On récupère l'adresse email
                    $mail = $cur['memEmail'];
                    if(isset($mail) AND !empty($mail))
                    {
                      unset($_SESSION["erreurMsg"]);
                      $mailVerif = substr($mail, 0, 4);
                      $mailDisplay = substr($mail, 4);
                  ?>
                    <form action="#" method="get">
                      <div class="inscription">
                        <?php if(isset($_SESSION['sendMsg'])){ ?>
                          <div class="alert alert-warning" role="alert">
                            <?php echo $_SESSION['sendMsg']; ?>
                          </div>
                        <?php } ?>
                        <label for="mail">Saisir les 4 premiers caractères de votre adresse email</label>
                        <?php echo "....".$mailDisplay; ?>
                        <input maxlength="4" type="text" name="mail" id="mail"><br>
                        <input type="submit" value="Envoyer">
                      </div>
                    </form>
                  <?php
                      if(isset($_GET['mail']) AND !empty($_GET['mail']))
                      {
                        // On sécurise les valeurs
                        $mailSaisie = htmlspecialchars($_GET['mail']);
                        if($mailSaisie == $mailVerif)
                        {
                          $_SESSION['sendMsg'] = "Un mail vous à été envoyé";
                          include 'assets/assets/include/sendMail.php';
                        }
                      }
                    } else {
                      $_SESSION['erreurMsg'] = "Le nom d'utilisateur n'existe pas";
                      header("Location: forgotPassword.php");
                    }
                  }
                  ?>
              </div>
            </section>
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
<?php/*
} else{
  header('Location: connexion.php?page=card');
}*/
?>
