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
		<title>Envie de partir</title>
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
		<img src="/images/bubble1.png" style="position: absolute; top:0; left:0; z-index: 1;">
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
				<div class="container-fluid" style="background: url('/images/bubble2.png'); background-position: 1200px ; background-repeat: no-repeat;">
					<div class="row">
						<div class="col">
							<script type="text/javascript">
								jQuery(function($){
									$(document).ready(function(){
										function animateFly(){
											$('.fly').animate({top:'320px'},2000);
											$('.fly').animate({top:'350px'},2000);
											animateFly();
										}
											animateFly();
									});

									// SCROLL
									$(window).scroll(function() {
											posScroll = $(document).scrollTop();
											if(posScroll >= 200)
												$('.fly').css({width:'200px', transition:'250ms'});
											else
												$('.fly').css({width:'300px', transition:'250ms'});
									});
								});
							</script>
							<img style="z-index: -2; position:absolute; left: 50%; top:300px; transform: translate(-50%, -50%); opacity: 0.8;" width="600px" src="images/earth.png" alt="">
							<img class="fly" style="z-index: -1; position:fixed; left: 50%; top:350px; transform: translate(-50%, -50%);" width="300" src="images/fly.png" alt="">
							<h1 style="text-align: center; position:relative; top:300px; text-shadow: 2px 2px 15px black; width: 800px; transform: translate(-50%, -50%); left: 50%; font-family: 'lato'; font-size: 82pt;">Envie de partir</h1>
							<a class="scrollLink" href="#about"><img src="/images/scrolldown.gif" alt="" width="28" style="position:relative; left: 50%; transform: translate(-75%, -50%); top: 400px;"></a>
						</div>
					</div>

					<div id="about" class="container" style="width: 70%;text-align: center; margin-top: 500px; margin-bottom: 100px; padding: 80px; background-color: rgba(35, 40, 65, 0.8); box-shadow: 0 0 150px #000000a6; z-index:444;">
						<h1 style="font-size: 52pt; margin-bottom: 0;">Nos voyages</h1>
						<p style="font-size: 19pt;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					</div>
				</div>

				<div class="wavy" style="background: url('/images/wavy.png'); width: 100%; height: 500px; background-repeat: no-repeat; position:relative; "></div>

				<div class="container" id="travelName">
					<div class="row" style="margin-top: 300px;">
						<div class="col-5">
							<div class="bg-circle-travel">
							</div>
							<h1>Travel Name</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						</div>
					</div>
					<div class="row">
						<div class="col-5">
							<div class="bg-circle-travel" style="background-position: right;">
							</div>
							<h1>Travel Name</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						</div>
					</div>
					<div class="row">
						<div class="col-5">
							<div class="bg-circle-travel">
							</div>
							<h1>Travel Name</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						</div>
					</div>
				</div>
			</div>

			<div id="about" class="container" style="padding: 0;width: 70%;text-align: center; margin-top: 100px; margin-bottom: 100px; background-color: rgba(35, 40, 65, 1); box-shadow: 0 0 150px #000000a6; z-index:444; height: 550px;">
				<div class="main-page">
					<div class="maincontent">
						<a class="mainlink btn">test</a>
					</div>
				</div>
				<div class="next-page">
					<div class="nextcontent">
						<iframe style="display: none;" id="next-page" style="width: 100%;" src="https://www.google.com/maps/d/embed?mid=1BZDj8F0fplD1eAlpLEL_PtNP8bPJgvA-" style="height: 480px !important;" width="100%" height="100px"></iframe>
					</div>
				</div>
			</div>

			<div class="container-fluid" style="margin-bottom: 400px; position:relative; background: url('/images/bubble4.png') top right no-repeat;">
				<div class="row">
					<div class="col">
						<img style="z-index: -2; position:absolute; left: 50%; top:300px; transform: translate(-50%, -50%); opacity: 0.8;" width="600px" src="images/earth.png" alt="">
						<h1 style="text-align: center; position:relative; top:300px; text-shadow: 2px 2px 15px black; width: 1000px; transform: translate(-50%, -50%); left: 50%; font-family: 'lato'; font-size: 82pt;">Nous soutenir <a href="">ici</a></h1>
					</div>
				</div>
				<img src="/images/bubble5.png" style="position: absolute; top:110%; left:-50px; z-index: 1;">
			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="assets/js/transition.js"></script>

	</body>
</html>
<?php
} else{
  header('Location: connexion.php');
}
?>
