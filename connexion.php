<!DOCTYPE HTML>
<!--
	Site internet Créé par AUTHEMAN Victor
-->
<?php
include 'assets/include/connectBDD.php';
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
		<!-- Font Awesome -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
		<!-- Bootstrap core CSS -->
		<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
		<!-- Material Design Bootstrap -->
		<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/css/mdb.min.css" rel="stylesheet">
    <!-- CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/style.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <!-- SCRIPT -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

		<script>
			$('.toast').toast('show');
		</script>
	</head>
	<body class="is-preload" onselectstart="return false" oncontextmenu="return false" ondragstart="return false">

		<!-- Wrapper -->
			<div id="wrapper" style="padding-top:0 !important">

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
					<div id="main" class="alt" style="border: none;">
						<div class="container-fluid row" style="height: 100vh; margin-bottom: 0 !important">
							<div class="col-5" style="background-color: #15233d;clip-path: polygon(92% 0, 92% 40%, 100% 50%, 92% 60%, 92% 100%, 0 100%, 0 0); box-shadow: 10px, 5px, 5px, black;">
								<section class="connexion" style="padding-top: 21%;">
									<div class="inner">
										<div class="connexion">
											<header class="major">
												<h2>JE N'AI PAS DE COMPTE</h2>
											</header>
											<p style="width: 80%;">Pour avoir la possibilité d'acceder à mes projet en ressources vous devez au préalable créer un compte utilisateur.</p>
											<button type="button" name="button">Inscription</button>
										</div>
									</div>
								</section>

							</div>
							<div class="col">
								<section class="connexion" style="padding-top: 15%;" id="one">
									<div class="inner">
										<form action="" method="post">
		                  <div class="connexion">
												<header class="major">
													<h2>JE ME CONNECTE</h2>
												</header>
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

									</div>
								</section>
							</div>
						</div>
					</div>
					<?php
					if(isset($message))
					{
						?>
						<p style="position: absolute; top: 100px; right: 100px;">
							<?php echo $message; ?>
						</p>
						<?php
						//echo '<script>alert("TON TEXTE");</script>';
					}
					?>
			</div>



		<!-- Scripts -->
					<!-- JQuery -->
			<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
			<!-- Bootstrap tooltips -->
			<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
			<!-- Bootstrap core JavaScript -->
			<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
			<!-- MDB core JavaScript -->
			<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/js/mdb.min.js"></script>
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
