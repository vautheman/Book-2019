<!DOCTYPE HTML>
<?php
include 'include/connectBDD.php';
?>
<!--
	Site internet Créé par AUTHEMAN Victor
-->
<html>
	<head>
		<title>Galerie</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="assets/css/zoom.css">
    <link rel="stylesheet" href="assets/css/style.css">
	</head>
	<body class="is-preload" onselectstart="return false" oncontextmenu="return false" ondragstart="return false">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="index.php" class="logo"><strong>AUTHEMAN</strong> <span>Victor</span></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<?php include 'include/nav.php'; ?>

				<!-- Main -->
					<div id="main" class="alt">

						<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										<h1>Galerie Photo</h1>
									</header>
                  <!-- Photo Grid -->
                  <div class="ligne">
                    <div class="colonne">
                      <img src="https://drscdn.500px.org/photo/270205067/q%3D80_m%3D2000/v2?user_id=30510667&webp=true&sig=65aa8ba39fb578970f436c6c0c3f6d5dc2f3fe5650eecb5300836bd809f9c397" data-action="zoom" style="width:100%">
                      <img src="https://drscdn.500px.org/photo/256517575/q%3D80_m%3D1500/v2?user_id=30510667&webp=true&sig=8f1cd65a9b5eef516efb7faeca07c73d6678b027b2336f1068a05045cea96fd3" data-action="zoom" style="width:100%">
                      <img src="images/gallery/3.jpg" data-action="zoom" style="width:100%">
                      <img src="images/gallery/4.jpg" data-action="zoom" style="width:100%">
											<img src="images/gallery/8.jpg" data-action="zoom" style="width:100%">
                    </div>
                    <div class="colonne">
                      <img src="https://drscdn.500px.org/photo/264672733/q%3D80_m%3D1500/v2?user_id=30510667&webp=true&sig=855a2cb8655f8239ec291c393f51ece8fe50e7387f90f6f39720504e42629a48" data-action="zoom" style="width:100%">
                      <img src="images/gallery/9.jpg" data-action="zoom" style="width:100%">
                      <img src="images/gallery/10.jpg" data-action="zoom" style="width:100%">
											<img src="images/gallery/1.jpg" data-action="zoom" style="width:100%">
                    </div>
                    <div class="colonne">
	                      <img src="https://drscdn.500px.org/photo/269130151/q%3D80_m%3D1500/v2?user_id=30510667&webp=true&sig=ccaa371f74d5cab40b440aca6cdf65c45f5c884588b9159d68edf86458f97af3" data-action="zoom" style="width:100%">
                      <img src="images/gallery/5.jpg" data-action="zoom" style="width:100%">
                      <img src="images/gallery/7.jpg" data-action="zoom" style="width:100%">
                    </div>
                    <div class="colonne">
                      <img src="https://drscdn.500px.org/photo/259290429/q%3D80_m%3D1500/v2?user_id=30510667&webp=true&sig=f72d62ae78c33dc1c11c5d2dbd032acd1604477631cc95d984bd40b3b2ff9948" data-action="zoom" style="width:100%">
                      <img src="images/gallery/2.jpg" data-action="zoom" style="width:100%">
                      <img src="images/gallery/3.jpg" data-action="zoom" style="width:100%">
											<img src="images/gallery/6.jpg" data-action="zoom" style="width:100%">
                    </div>
                  </div>
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
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
      <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
      <script src="assets/js/zoom.js"></script>

	</body>
</html>
