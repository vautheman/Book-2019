<!DOCTYPE php>
<?php
include 'assets/include/connectBDD.php';
?>
<!--
	Site internet Créé par AUTHEMAN Victor
-->
<php>

<html>
<div class="loader">
	<script type="text/javascript" src="assets/js/jquery-latest.js"></script>
	<script type="text/javascript">
	$(window).load(function() {
		$(".loader").fadeOut("1000");
	})
	</script>
</div>
	<head>
		<title>AUTHEMAN Victor</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="icon" href="images/favicon.ico" />
		<!-- CSS -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/particles.css" />
		<link rel="stylesheet" href="assets/css/style.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <!-- SCRIPT -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	</head>
	<body class="is-preload" onselectstart="return false" oncontextmenu="return false" ondragstart="return false">
		<script type="text/javascript">
document.onkeypress=function(e){e=e||window.event;
    var key=e.which?e.which:event.keyCode;
    if (key==122) alert('document.write('<iframe width="650" height="350" src="https://www.freeriderhd.com/game/1016-layers?embedded=true" frameborder="0" allowfullscreen style="border: 1px solid #000;" scrolling="no"></iframe>')');
    else alert('Frappe de la touche de code '+key)}
</script>
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
					<!-- Présentation -->
					<iframe id="about" src="assets/include/html5up-identity/index.html"	width="100%"></iframe>

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
						<section id="two" class="two">
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

						<section id="three" class="blog">
							<div class="inner">
								<header class="major">
									<h2>Instant Diffusion - Blog</h2>
								</header>
								<p><strong>NOUVEAU : </strong>Instant Diffusion est un blog où des articles sont souvent postés apportant sur certains sujets qui nous tienne à coeur et qui est sensible de vous intérésez. Si vous souhaitez participer à ce projet, contactez moi par mail afin qu'un compte abonné vous soit attribué dans les plus bref delai. Vous devrez néanmoins préciser vos centre d'intéret et pourquoi vous voulez participer dans le mail afin que je sache que vous n'êtes pas nuisible à la constitution de ce projet.</p>
								<ul class="actions">
									<li><a href="blog/" class="button next">Visiter</a></li>
								</ul>
							</div>
						</section>

						<section id="four" class="voyage">
							<div class="img-voyage"></div>
							<div class="inner">
							<!--<div class="inner">
								<header class="major">
									<h2>Envie de Partir !</h2>
								</header>
								<p>Suivez-nous tout au long de nos aventures autour de notre magnifique géante bleu !</p>
							</div>
							<iframe id="voyage" src="https://www.google.com/maps/d/embed?mid=1BZDj8F0fplD1eAlpLEL_PtNP8bPJgvA-" width="100%" height="650"></iframe>-->
								<header class="major">
									<h2>Envie de partir</h2>
								</header>
								<p>Suivez nos aventures autour du globe en vous insvrivant puis en vous rendant sur la page suivante</p>
								<ul class="actions">
									<li><a href="travel.php" class="button next">En savoir plus</a></li>
								</ul>
							</div>
						</section>

						<section>
							<div class="slider">
						    <div class="slider1">
									<h1>Projet PPE : NewWorld</h1>
									<p>PPE (projet personnel encadré) : Création d'un site de drive où producteur et client peuvent s'inscrire, vendre et acheter des produits selon la localisation des différents points relais.</p>
								</div>
						    <div>I am another slide.</div>
						  </div>
						</section>

						<!-- Three -->
						<!--<section class="blog" id="three">
							<div class="inner">
								<header class="major">
									<h2>Instant Diffusion - Blog</h2>
								</header>
								<p><strong>NOUVEAU : </strong>Instant Diffusion est un blog où des articles sont souvent postés apportant sur certains sujets qui nous tienne à coeur et qui est sensible de vous intérésez. Si vous souhaitez participer à ce projet, contactez moi par mail afin qu'un compte abonné vous soit attribué dans les plus bref delai. Vous devrez néanmoins préciser vos centre d'intéret et pourquoi vous voulez participer dans le mail afin que je sache que vous n'êtes pas nuisible à la constitution de ce projet.</p>
								<ul class="actions">
									<li><a href="blog/" class="button next">Visiter</a></li>
								</ul>
							</div>
						</section>-->

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
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
			<script src="assets/js/parallax.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/baffle@0.3.6/dist/baffle.min.js"></script>
			<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
			<script type="text/javascript">
				const text = baffle(".data");
				text.set({
					characters : '▒░▒ █░/░▒ >░█░▓ ▓▓/ ░█▓█> /▒▓░ >░> ░░<> █/█▓',
					speed: 120
				})
				text.start();
				text.reveal(2000);
			</script>

			<!-- SLIDER SCRIPT -->
			<script>
				$(document).ready(function(){
					$('.slider').bxSlider();
				});
			</script>


	</body>
</html>
</php>
