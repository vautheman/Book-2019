<!DOCTYPE HTML>
<?php
include 'include/connectBDD.php';

//if(isset($_GET['id']) AND $_GET['id'] > 0)
if(isset($_SESSION['id']))
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
					<header id="header" class="alt style2">
						<a href="index.php" class="logo"><img width="30px" src="images/logo.png"><strong>AUTHEMAN</strong> <span>Victor</span></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<?php include 'include/nav.php'; ?>

				<!-- Banner -->
				<!-- Note: The "styleN" class below should match that of the header element. -->
					<section id="banner" class="style1 videoBack">
						<div class="inner">
							<span class="image">
								<img src="images/pic07.jpg" alt="" />
							</span>
							<header class="major">
								<h1>Portfolio</h1>
							</header>
							<div class="content">
								<p>Tout ce que j'ai appris et ce que vous pouvez apprendre !</p>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">
						<!-- One -->
							<section id="one">
								<!-- Message de bienvenu après connexion et redirection -->
								<?php
									if(isset($_GET['user']))
									{
										?>
										<div class="alertMessage alert alert-success" role="alert">
											Bienvenu <?php echo $_GET['user'];?> !
										</div>
										<?php
									}
								?>
								<!-- SCRIPT disparition .alert -->
								<script type="text/javascript">
								$(document).ready(function(){
							        $(".alert").delay(2000).fadeOut()
							    });
								</script>
							</section>

						<!-- Two -->
						<section id="two">
							<iframe width="650" height="350" src="https://www.freeriderhd.com/game/1016-layers?embedded=true" frameborder="0" allowfullscreen style="border: 1px solid #000;" scrolling="no"></iframe>
						</section>

				<!-- Contact -->
					<?php include 'include/contact.php'; ?>

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
} else{
  header('Location: connexion.php?page=portfolio');
}
?>
