<!DOCTYPE HTML>
<?php include 'assets/include/connectBDD.php'; ?>
<!--
	Site internet Créé par AUTHEMAN Victor
-->
<html>
	<head>
		<title>A Propos</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="icon" href="images/favicon.ico" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="assets/css/style.css" />
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
            <audio src="song/music.mp3" autoplay loop>

            </audio>
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
                    <div class="alert alert-danger" role="alert">
                      <h4 class="alert-heading">Erreur 404</h4>
                      <p style="padding-bottom: 0; margin-bottom: 0;">La page que vous recherchez est incorrect ou n'est pas disponible pour le moment !</p>
                      <hr>
                      <p class="mb-0">Réessayez plus tard ou saisissez une adresse valide !</p>
                    </div>
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
