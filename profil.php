<!DOCTYPE HTML>
<?php
// Connexion à la base de donnée
include 'assets/include/connectBDD.php';

if(isset($_GET['id']) AND $_GET['id'] > 0)
{
  $getId = intval($_GET['id']);
  if($getId == $_SESSION['id'])
  {
    $reqUser = $bdd->prepare('SELECT * FROM membres WHERE memId = ?');
    $reqUser->execute(array($getId));
    $userInfo = $reqUser->fetch();
?>
<html>
	<head>
		<title>Profil</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="icon" href="images/favicon.ico" />
    <!-- CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/style.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <!-- SCRIPT -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	</head>
	<body class="is-preload" onselectstart="return false" oncontextmenu="return false" ondragstart="return false">

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
        <div id="banner2" class="profile container-fluid"></div>

        <img id="logo" class="img-responsive center-block" src="images/profile.png" alt="">
					<div id="main" class="alt">

						<!-- One -->
            <section id="one">
              <div class="inner">
                <header class="major">
                  <h1><?php echo $userInfo['memNom']." ".$userInfo['memPrenom']; ?></h1>
                </header>
                <ul>
                  <li>Nom: <?php echo $userInfo['memNom']; ?></li>
                  <li>Prenom: <?php echo $userInfo['memPrenom']; ?></li>
                  <li>Email: <?php echo $userInfo['memEmail']; ?></li>
                </ul>
                <!-- Les commentaires postés -->
                <h4>Vos commentaires postés :</h4>
                <?php
                $req = $bdd->prepare("SELECT * FROM commentaires WHERE comUser = ?");
                $req->execute(array($userInfo['memUtilisateur']));
                while($cur = $req->fetch())
                {
                  echo "<p>".$cur['comType']." : ".$cur['comTexte']."</p><hr width='500px'>";
                }
                ?>
                <?php
                if(isset($_SESSION['id']) AND $userInfo['memId'] == $_SESSION['id'])
                {
                  ?>
                  <ul class="actions">
                    <li><a class="button" href="editionProfil.php">Éditer mon profil</a><br></li>
                    <li><a class="button primary" href="deconnexion.php">Se déconnecter</a></li>
                  </ul>
                  <?php
                }
                ?>
              </div>
              <?php
              if(isset($message))
              {
                ?>
                <div class="alertMessage alert alert-warning" role="alert">
                  <?php echo $message;	?>
                </div>
                <?php
              }
              ?>
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
<?php
} else header("Location: profil.php?id=".$_SESSION['id']);
} else header('Location: index.php');
?>
