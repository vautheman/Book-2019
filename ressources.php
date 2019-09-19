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
		<title>Ressources</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="icon" href="images/favicon.ico" />
		<!-- CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
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
					<section id="banner" class="style5">
						<div class="inner">
							<span class="image">
								<img src="images/pic07.jpg" alt="" />
							</span>
							<header class="major">
								<h1>Ressources</h1>
							</header>
							<div class="content">
								<p>Toutes les données du fruit de mon travail durant toutes ces années d'études<br>et continues d'évoluer de plus en plus chaque jour.</p>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section style="background: #242943;" id="one">
								<!-- Message de bienvenu après connexion et redirection -->
								<?php
									if(isset($_GET['user']))
									{
										?>
										<div class="alert alert-success" role="alert">
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
								<div class="inner">
									<header class="major">
										<h2>Conditions d'utilisation</h2>
									</header>
									<p>Toutes mes ressources sont disponibles gratuitement sous modalité d'inscription. Ses ressources ont pour but d'aider la majorité à réaliser des projets que j'ai moi-même mis en place. Mes cours sont disponibles sur mon <a href="portfolio.php">portfolio</a> et les différents fichiers de configuration et de programmation sont réparti sur cette page ici même. Faites en bon usage !</p>
								</div>
							</section>

							<div class="card card-image" style="filter: grayscale(50%); background-size: cover; background-image: url(https://images7.alphacoders.com/861/861304.jpg);">
							  <div class="text-white text-center py-5 px-4 my-5">
							    <div>
							      <h2 class="card-title h1-responsive pt-3 mb-5 font-bold"><strong>New World : Projet Drive, PPE 2019 </strong></h2>
							      <p class="mx-5 mb-5">PPE (projet personnel encadré) : Création d'un site de drive où producteur et client peuvent s'inscrire, vendre et acheter des produits selon la localisation des différents points relais.
							      </p>
							      <a href="https://docs.google.com/document/d/1QfUcgxkbaF7lZk-YFCJD6nZFb9mIXfm5kn9BfqPbH8g" class="btn btn-outline-white btn-md text-dark"><i class="fas fa-clone left"></i> Voir le projet</a>
							    </div>
							  </div>
							</div>

						<!-- Two -->
            <section id="two">
                <div class="inner">
									<header class="major">
										<h1>LINUX</h1>
									</header>
                  <ul>
                    <li><a href="ressources/linux/sources.list">sources.list</a></li>
                  </ul>
								</div>
							</section>
              <section id="three">
                  <div class="inner">
  									<header class="major">
  										<h1>C++</h1>
                      <p>Pour info les fichiers c++ ne sont pas compilés</p>
  									</header>
                    <ul>
                      <li><a href="ressources/c++/bienvenue/bienvenue.cpp">bienvenue.cpp</a></li>
                      <li><a href="ressources/c++/helloworld/helloworld.cpp">helloWorld.cpp</a></li>
                      <li><a href="ressources/c++/surface/surface.cpp">surface.cpp</a></li>
                      <li><a href="ressources/c++/volume/volume.cpp">volume.cpp</a></li>
											<li><a href="ressources/c++/menuChoix.cpp">menuChoix.cpp</a></li>
                    </ul>
                    <p style="margin:0;">Les Boucles :</p>
                    <ul>
                      <li><a href="ressources/c++/lesBoucles/cadreRectangle/cadreRectangle.cpp">cadreRectangle.cpp</a></li>
                      <li><a href="ressources/c++/lesBoucles/rectangle/rectangle.cpp">rectangle.cpp</a></li>
                      <li><a href="ressources/c++/lesBoucles/tenPrems/tenPrems.cpp">tenPrems.cpp</a></li>
                      <li><a href="ressources/c++/lesBoucles/tenPremsPair/tenPremsPair.cpp">tenPremsPair.cpp</a></li>
                      <li><a href="ressources/c++/lesBoucles/tenPremsPairPGPP/tenPremsPairPGPP.cpp">tenPremsPairPGPP.cpp</a></li>
                    </ul>
                    <p style="margin:0;">TD C++</p>
                    <ul>
                      <li><a href="ressources/c++/tdc++/deuxReels/deuxReels.cpp">deuxReels.cpp</a></li>
                      <li><a href="ressources/c++/tdc++/login/login.cpp">login.cpp</a></li>
                      <li><a href="ressources/c++/tdc++/piscine/piscine.cpp">piscine.cpp</a></li>
                      <li><a href="ressources/c++/tdc++/piscinePlus/piscinePlus.cpp">piscinePlus.cpp</a></li>
                      <li><a href="ressources/c++/tdc++/plusPetitNombre/plusPetitNombre.cpp">plusPetitNombre.cpp</a></li>
                      <li><a href="ressources/c++/tdc++/rectangleCarac/rectangleCarac.cpp">rectangleCarac.cpp</a></li>
                      <li><a href="ressources/c++/tdc++/triNoms/triNoms.cpp">triNoms.cpp</a></li>
                    </ul>
  								</div>
  							</section>
                <section id="four">
                  <div class="inner">
  									<header class="major">
  										<h1>SQL</h1>
  									</header>
                    <p>Table C1_Livre</p>
                    <ul>
                      <li><a href="ressources/sql/C1_Livre.sql">C1_Livre.sql</a></li>
                      <li><a href="ressources/sql/C1_Livre_Data.sql">C1_Livre_Data.sql</a></li>
                    </ul>
                  </div>
                </section>
                <section id="five">
                  <div class="inner">
  									<header class="major">
  										<h1>HTML5 / CSS3</h1>
  									</header>
                    <p>Site vitrine</p>
                    <ul>
                      <li><a href="ressources/html/cvEnLigne.zip">cvEnLigne.zip</a></li>
                      <li><a href="ressources/html/artisans.zip">artisans.zip</a></li>
                      <li><a href="ressources/html/boutiqueEnLigne.zip">boutiqueEnLigne.zip</a></li>
                    </ul>
                  </div>
                </section>

					</div>

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
  header('Location: connexion.php?page=ressources');
}
?>
