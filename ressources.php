<!DOCTYPE HTML>
<?php
include 'assets/include/connectBDD.php';

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
					<?php include 'assets/include/nav.php'; ?>

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

							<!--Carousel Wrapper-->
							<section id="two" class="mt-4">
								<div class="inner">
									<header class="major">
										<h2>Mes Projets</h2>
									</header>
									<div id="carousel-example-1z" class="carousel slide carousel-fade mb-4" data-ride="carousel">
									  <!--Indicators-->
									  <ol class="carousel-indicators">
									    <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
									    <li data-target="#carousel-example-1z" data-slide-to="1"></li>
									    <li data-target="#carousel-example-1z" data-slide-to="2"></li>
									  </ol>
									  <!--/.Indicators-->
									  <!--Slides-->
									  <div class="carousel-inner" role="listbox">
									    <!--First slide-->
									    <div class="carousel-item active">
									      <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(130).jpg"
									        alt="First slide">
									    </div>
									    <!--/First slide-->
									    <!--Second slide-->
									    <div class="carousel-item">
									      <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(129).jpg"
									        alt="Second slide">
									    </div>
									    <!--/Second slide-->
									    <!--Third slide-->
									    <div class="carousel-item">
									      <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(70).jpg"
									        alt="Third slide">
									    </div>
									    <!--/Third slide-->
									  </div>
									  <!--/.Slides-->
									  <!--Controls-->
									  <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
									    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
									    <span class="sr-only">Previous</span>
									  </a>
									  <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
									    <span class="carousel-control-next-icon" aria-hidden="true"></span>
									    <span class="sr-only">Next</span>
									  </a>
									  <!--/.Controls-->
									</div>

									<!-- Card -->
									<div class="d-flex flex-lg-row flex-sm-column mb-3 justify-content-between">
										<style media="screen">
											.flex-lg-row .ressourceCard{
												max-width: 400px;
												width: auto;
											}

											.ressourceCard img{
												border-radius: 5px;
											}
										</style>
										<div class="ressourceCard">
											<img width="100%" src="https://jesuisadmin.fr/content/images/2018/11/D-ployez-vos-machines-virtuelles-KVM-sur-Proxmox-avec-Cloud-Init--1-.png" alt="">
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
										</div>
										<div class="ressourceCard">
											<img width="100%" src="https://jesuisadmin.fr/content/images/2018/11/D-ployez-vos-machines-virtuelles-KVM-sur-Proxmox-avec-Cloud-Init--1-.png" alt="">
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
										</div>
									</div>
								</div>
						</section>

						<!-- Two -->
            <section id="three">
                <div class="inner">
									<header class="major">
										<h1>LINUX</h1>
									</header>
                  <ul>
                    <li><a href="ressources/linux/sources.list">sources.list</a></li>
                  </ul>
								</div>
							</section>
              <section id="four">
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
                <section id="five">
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
                <section id="six">
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
					<?php include 'assets/include/contact.php'; ?>

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
} else{
  header('Location: connexion.php?page=ressources');
}
?>
