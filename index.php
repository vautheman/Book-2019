<!DOCTYPE php>
<?php
include 'assets/include/connectBDD.php';
?>
<!--
	Site internet Créé par AUTHEMAN Victor
-->
<php>

<html>
</div>
	<head>
		<title>AUTHEMAN Victor</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="icon" href="images/favicon.ico" />
		<!-- CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/particles.css" />
		<link rel="stylesheet" href="assets/css/style.css" />
		<!--<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>-->
    <!-- SCRIPT -->
    <script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery-3.3.1.min"></script>
	</head>
	<body class="is-preload" onselectstart="return false" oncontextmenu="return false" ondragstart="return false">
		<!-- Wrapper -->

			<div id="wrapper">
				<?php
				if(isset($_COOKIE['accept_cookie']))
				{
					$showCookie = false;
				} else {
					$showCookie = true;
				}

				if($showCookie) { ?>
				<div class="alertCookies" role="alert">
					<p>Nous utilisons des cookies pour vous offrir une meilleure expérience de navigation, analyser le trafic du site, personnaliser le contenu et diffuser des publicités ciblées. Si vous continuez à utiliser ce site, vous consentez à notre utilisation des cookies.</p>
					<a href="assets\php\accept_cookie.php" class="button cookies">Accepter</a>
				</div>
				<script>
					$(document).ready(function(){
							$(".cookies").click(function(){
									$(".alertCookies").fadeOut()
							});
					});
				</script>
			<?php } ?>
				<!-- Header -->
					<header id="header" class="alt">
						<a href="index.php" class="logo"><img width="30px" src="images/logo.png"><strong>AUTHEMAN</strong> <span>Victor</span></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<?php include 'assets/include/nav.php'; ?>

				<!-- Banner -->
					<section id="banner" class="major">
						<!--<audio src="song/startup.mp3" autoplay></audio>-->
						<div class="inner" id="home_wave">
							<header class="major">
								<h1 class="data">Développeur Web, Web Designer</h1>
							</header>
							<div class="content">
								<p>Créateur de site internet responsive avec HTML5,<br />
									CSS3, PHP, JavaScipt & Bootstrap</p>
								<ul class="actions">
									<div class="grid__item theme-2">
										<li><a href="#one" class="particles-button button next scrolly">Plus d'info</a></li>
									</div>
								</ul>
							</div>
						</div>
					</section>

					<section class="container-fluid p-0">
						<div class="row" style="height: 75vh; margin:0;">
							<style media="screen">
								#aboutProfile::after{
									background-color: white;
								}
							</style>
							<div class="col-lg bg-light" id="aboutProfile" style="background-image: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0)), url('images/profileAbout.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center; background-color: #15233d;clip-path: polygon(92% 0, 92% 40%, 100% 50%, 92% 60%, 92% 100%, 0 100%, 0 0); box-shadow: 10px, 5px, 5px, black;">

							</div>
							<div class="col-lg position-relative">
								<div class="inner position-absolute text-center w-100" style="top: 50%; left: 50%; transform: translate(-50%, -50%);">
									<header>
										<h1 class="display-5"><span class="border border-1 p-4">AUTHEMAN Victor</span></h1>
									</header>
									<h5 style="font-size: 18pt;">Developpeur Web & Web Designer</h5>
									<p style="font-size: 15pt;">Etudiant du BTS Dominique Villars, 05000 GAP FRANCE</p>
									<div class="icon d-flex flex-row justify-content-center">
										<a class="m-2 border-0" href="https://github.com/vautheman"><i class="fab fa-github fa-2x"></i></a>
										<a class="m-2 border-0" href="https://www.facebook.com/authemanvicko"><i class="fab fa-facebook fa-2x"></i></a>
										<a class="m-2 border-0" href="https://www.linkedin.com/in/victor-autheman-developer"><i class="fab fa-linkedin-in fa-2x"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="p-4 bg-dark" style="height: 100px; background: url('https://backgroundcheckall.com/wp-content/uploads/2017/12/dark-floral-background-9942.jpg');">

						</div>
					</section>

				<!-- Main -->
					<div id="main">
						<!-- One -->
						<section id="one" class="tiles">
							<article>
								<span class="image">
									<img src="images/pic01.jpg" alt="" />
								</span>
								<header class="major">
									<h3><a href="about.php" class="link">A Propos</a></h3>
									<p>Qui suis-je !</p>
								</header>
							</article>
							<article>
								<span class="image">
									<img src="images/pic02.jpg" alt="" />
								</span>
								<header class="major">
									<h3><a href="parcours.php" class="link">Mon Parcours</a></h3>
									<p>Comment suis-je arrivé jusqu'ici ?</p>
								</header>
							</article>
							<article>
								<span class="image">
									<img src="images/pic03.jpg" alt="" />
								</span>
								<header class="major">
									<h3><a href="competences.php" class="link">Mes Compétences</a></h3>
									<p>Ce que j'apprends et ce que j'ai appris.</p>
								</header>
							</article>
							<article>
								<span class="image">
									<img src="images/pic04.jpg" alt="" />
								</span>
								<header class="major">
									<h3><a href="experience.php" class="link">Mon Expérience</a></h3>
									<p>Tout ce qu'il faut savoir sur mon expérience professionnel et scolaire.</p>
								</header>
							</article>
							<article>
								<span class="image">
									<img src="images/pic05.jpg" alt="" />
								</span>
								<header class="major">
									<h3><a href="portfolio.php" class="link">Portfolio</a></h3>
									<p>Mes compétences sur "papier" que je tiens à partager.</p>
								</header>
							</article>
							<article>
								<span class="image">
									<img src="images/pic06.jpg" alt="" />
								</span>
								<header class="major">
									<h3><a href="assets/files/cv.pdf" class="link">Curriculum Vitae</a></h3>
									<p>Tout ce que j'ai décris ci-dessus en version pdf.</p>
								</header>
							</article>
						</section>

						<!-- Two -->
						<section id="two" class="two mb-4">
							<div class="inner">
								<header class="major">
									<h2>Ressources</h2>
								</header>
								<p>Toutes mes ressources sont disponibles gratuitement sous modalité d'inscription. Ses ressources ont pour but d'aider la majorité à réaliser des projets que j'ai moi-même mis en place. Mes cours sont disponibles sur mon <a href="portfolio.php">portfolio</a> et les différents fichiers de configuration et de programmation sont réparti sur cette page ici même.<br>Faites en bon usage !</p>
								<ul class="actions">
									<li><a href="ressources.php" class="button next">En savoir Plus</a></li>
								</ul>
							</div>
						</section>

						<section id="three" class="three">
							<style media="screen">
								.carousel-item{
									height: 400px;
								}
							</style>
							<!--Carousel Wrapper-->
							<div id="carousel-example-2" class="carousel slide carousel-fade" data-ride="carousel">
							  <!--Indicators-->
							  <ol class="carousel-indicators">
							    <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
							    <li data-target="#carousel-example-2" data-slide-to="1"></li>
							    <li data-target="#carousel-example-2" data-slide-to="2"></li>
							  </ol>
							  <!--/.Indicators-->
							  <!--Slides-->
							  <div class="carousel-inner" role="listbox">
							    <div class="carousel-item active">
							      <div class="view">
							        <img class="d-block w-100" src="images/slider1.jpg"
							          alt="First slide">
							        <div class="mask rgba-black-light"></div>
							      </div>
							      <div class="carousel-caption">
							        <h3 class="h3-responsive">Light mask</h3>
							        <p>First text</p>
							      </div>
							    </div>
							    <div class="carousel-item">
							      <!--Mask color-->
							      <div class="view">
							        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(6).jpg"
							          alt="Second slide">
							        <div class="mask rgba-black-strong"></div>
							      </div>
							      <div class="carousel-caption">
							        <h3 class="h3-responsive">Strong mask</h3>
							        <p>Secondary text</p>
							      </div>
							    </div>
							    <div class="carousel-item">
							      <!--Mask color-->
							      <div class="view">
							        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(9).jpg"
							          alt="Third slide">
							        <div class="mask rgba-black-slight"></div>
							      </div>
							      <div class="carousel-caption">
							        <h3 class="h3-responsive">Slight mask</h3>
							        <p>Third text</p>
							      </div>
							    </div>
							  </div>
							  <!--/.Slides-->
							  <!--Controls-->
							  <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
							    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
							    <span class="sr-only">Previous</span>
							  </a>
							  <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
							    <span class="carousel-control-next-icon" aria-hidden="true"></span>
							    <span class="sr-only">Next</span>
							  </a>
							  <!--/.Controls-->
							</div>
							<!--/.Carousel Wrapper-->
						</section>

						<section id="four" class="four mb-4" style="background-color: #242943; border-bottom: solid 1px rgba(212, 212, 255, 0.1);">
							<div class="inner">
								<header class="major">
									<h2>Derniers Tutoriel</h2>
								</header>
								<p>Voici mes derniers tutoriels disponible dans mon portfolio</p>
								<div class="row">
								<?php
								$req = $bdd->prepare("SELECT * FROM card LIMIT 6");
								$req->execute();
								while($curCard = $req->fetch())
								{
									?>
									<div class="column-4 column-12-medium">
										<div class="carte" style="background-color: #15233d;">
										 <div class="container text-left">
											 <h4><b><?php echo $curCard['cardNom']; ?></b></h4>
											 <p><?php echo substr($curCard['cardDesc'], 0, 70).'...'; ?></p>
											 <?php if(isset($_SESSION['user']) AND $_SESSION['user'] == "admin"){ ?>
												 <ul class="actions">
													 <li><a class="button primary" href="cardModif.php?cardId=<?php echo $curCard['cardId']; ?>">Modifier</a></li>
													 <li><a class="button primary" href="cardSuppr.php?cardId=<?php echo $curCard['cardId']; ?>">Supprimer</a></li>
												 </ul>
												 <?php } ?>
											 <ul class="actions">
												<li><a target="_blank" href="<?php echo $curCard['cardURL']; ?>" class="button">Ouvrir</a></li>
											</ul>
										 </div>
										</div>
									</div>
									<?php
									}
									?>
								</div>
								<ul class="actions">
									<li><a href="portfolio.php" class="button next">En savoir Plus</a></li>
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
			<script src="https://kit.fontawesome.com/6d49d39f46.js" crossorigin="anonymous"></script>
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script type="text/javascript">
				const text = baffle(".data");
				text.set({
					characters : '▒░▒ █░/░▒ >░█░▓ ▓▓/ ░█▓█> /▒▓░ >░> ░░<> █/█▓',
					speed: 120
				})
				text.start();
				text.reveal(2000);
			</script>


	</body>
</html>
</php>
