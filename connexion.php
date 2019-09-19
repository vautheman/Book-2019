<!DOCTYPE HTML>
<!--
	Site internet Créé par AUTHEMAN Victor
-->
<?php
include 'include/connectBDD.php';
if(!isset($_SESSION['id']))
{
	if(isset($_POST['formConnexion']))
	{
		$user = htmlspecialchars($_POST['user']);
		$password = sha1($_POST['password']);
		if(!empty($user) AND !empty($password))
		{
			$reqUser = $bdd->prepare("SELECT * FROM membres WHERE memUtilisateur = ? AND memMotDePasse = ?");
			$reqUser->execute(array($user, $password));
			$userExist = $reqUser->rowCount();
			if($userExist == 1)
			{
				$userInfo = $reqUser->fetch();
				$_SESSION['id'] = $userInfo['memId'];
				$_SESSION['user'] = $userInfo['memUtilisateur'];
				$_SESSION['email'] = $userInfo['memEmail'];
				$page = $_GET['page'];
				if(isset($page) AND !empty($page))
				{
					if($page != "ressources" AND $page != "portfolio" AND $page != "index" AND $page != "profil")
					{
						header('Location: profil.php?id=' . $_SESSION['id']);
					} else {
						header("Location: ".$_GET['page'].".php?id=".$_SESSION['id']);
					}
				} else {
					header("Location: profil.php?id=".$_SESSION['id']);
				}
			} else {
				$message = "Le nom d'utilisateur ou le mot de passe est incorrect !";
			}
		} else {
			$message = "Tous les champs doivent être complétés !";
		}
	}
?>
<html>
	<head>
		<title>Connexion</title>
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
					<?php include 'include/nav.php'; ?>

				<!-- Main -->
					<div id="main" class="alt">

						<!-- One -->
							<section class="connexion" id="one">
								<div class="inner">
									<form action="" method="post">
	                  <div class="connexion">
	                    <label for="user">Utilisateur</label>
	                    <input type="text" name="user" required="required">
	                    <label for="password">Mot de passe</label>
	                    <input type="password" name="password" required="required"><br>
	                    <ul class="actions">
	  										<li><input type="submit" name="formConnexion" value="Connexion" class="primary" /></li>
	  										<li><input type="reset" value="Effacer" /></li>
	  									</ul>
											<p>Vous ne possédez pas d'identifiant? Vous pouvez vous inscrire dès à présent en cliquant <a href="inscription.php">ici</a> !</p>
											<p>Mot de passe oublié ? cliquez <a href="forgotPassword.php">ici</a></p>
	                  </div>
	                </form>
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
								</div>
							</section>
					</div>

				<!-- Footer -->
					<?php include 'include/footer.html'; ?>

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
?>
