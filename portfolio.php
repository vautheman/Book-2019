<!DOCTYPE HTML>
<?php
include 'assets/include/connectBDD.php';

//if(isset($_GET['id']) AND $_GET['id'] > 0)
//if(isset($_SESSION['id']))
//{

?>
<!--
	Site internet Créé par AUTHEMAN Victor
-->

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
					<header id="header" class="alt style6">
						<a href="index.php" class="logo"><img width="30px" src="images/logo.png"><strong>AUTHEMAN</strong> <span>Victor</span></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<?php include 'assets/include/nav.php'; ?>

				<!-- Banner -->
				<!-- Note: The "styleN" class below should match that of the header element. -->
					<section id="banner" class="style6 videoBack">
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
						<!--<section style="position: fixed; display: flex; flex-direction: column; ; z-index: 5; bottom: 0; right:0;" id="menu-secondary">
							<?php/*
								$req = $bdd->prepare("SELECT * from portfolio");
								$req->execute();
								// On ouvre la boucle pour l'affichage du menu secondaire
								while($cur = $req->fetch())
								{
									echo "<a class='scrolly icon-anchor' href='#".$cur['portAncre']."'><img src='images/portfolio/icon/".$cur['portImage']."' width='50px' height='50px' alt='' data-position='center center' /></a>";
								}*/
							?>
						</section>-->
						<!-- One -->
							<section id="one">
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
									<p>Je mets mon portfolio à disposition de tous gratuitement sous modalité d'inscription. Celui-ci a pour but d'aider la majorité d'entre vous à réaliser des projets que j'ai moi-même mis en place. Mes cours et différents fichiers de configuration et de programmation en font partie.<br />Faites en bon usage !</p>
								</div>
							</section>
							<section>
								<div class="inner">
									<header class="major">
										<?php if(isset($_GET['search']) AND !empty($_GET['search'])){
											$search = htmlspecialchars($_GET['search']);
										?>
											<h2 style="display: inline-block; ">Résultat pour : <?php echo $search; ?></h2>
										<?php } else { ?>
											<h2 style="display: inline-block; ">Derniers articles</h2>
										<?php } ?>
										<form class="" action="" method="get">
											<input style="display: inline-block;" type="search" name="search" value="" placeholder="Rechercher ...">
										</form>
									</header>
									<div class="row">
									<?php
									if(isset($_GET['search']) AND !empty($_GET['search']))
									{
										// Si une recherche existe alors :
										$search = htmlspecialchars($_GET['search']);
										$req = $bdd->prepare("SELECT * FROM card WHERE cardNom LIKE ? OR cardContenu LIKE ? OR cardDesc LIKE ? LIMIT 6");
										$req->execute(array("%".$search."%", "%".$search."%", "%".$search."%"));
										while($curCard = $req->fetch())
										{
											?>
											<div class="column-4 column-12-medium">
	                      <div class="carte" style="background-color: #15233d;">
													<div class="container text-left">
 	                         <h4><b><?php echo $curCard['cardNom']; ?></b></h4>
 	                         <p><?php echo substr($curCard['cardDesc'], 0, 70).'...'; ?></p>
													<ul class="actions">
														<?php
														//  Récupèration du nombre de commentaire
														$reqCom = $bdd->prepare("SELECT * FROM commentaires WHERE comCard = ?");
														$reqCom->execute(array($curCard['cardId']));
														$nbCom = 0;
														?>
														<li><i class="fas fa-comment-alt"></i> <?php while($curCom = $reqCom->fetch()){$nbCom++;} echo $nbCom; ?></li>
														<li><i class="fas fa-calendar-alt"></i> <?php $date=date_create($curCard['cardDate']); echo date_format($date, 'd/m/Y'); ?></li>
													</ul>
													<ul class="actions">
													 <li><a target="_blank" href="article.php?id=<?php echo $curCard['cardId']; ?>" class="button">Consulter</a></li>
													 <div>
														 <li style="display: inline-block;"><a style="border: none !important; bottom:0;" title="Télécharger" target="_blank" href="<?php echo $curCard['cardURL']; ?>"><i class="fas fa-external-link-alt fa-lg"></i></a></li>
														 <?php if(isset($_SESSION['user']) AND $_SESSION['user'] == "admin"){ ?>
														 <li style="display: inline-block;"><a style="border: none !important; bottom:0;" href="cardModif.php?cardId=<?php echo $curCard['cardId']; ?>" class="text-warning"><i class="fas fa-edit fa-lg"></i></a></li>
														 <li style="display: inline-block;"><a style="border: none !important; bottom:0;" href="cardSuppr.php?cardId=<?php echo $curCard['cardId']; ?>" class="text-danger"><i class="fas fa-trash fa-lg"></i></a></li>
														 <?php } ?>
													 </div>
												 </ul>
 	                       </div>
	                      </div>
	                    </div>
										<?php
										}
									} else {
										// sinon
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
													<ul class="actions">
														<?php
														//  Récupèration du nombre de commentaire
														$reqCom = $bdd->prepare("SELECT * FROM commentaires WHERE comCard = ?");
														$reqCom->execute(array($curCard['cardId']));
														$nbCom = 0;
														?>
														<li><i class="fas fa-comment-alt"></i> <?php while($curCom = $reqCom->fetch()){$nbCom++;} echo $nbCom; ?></li>
														<li><i class="fas fa-calendar-alt"></i> <?php $date=date_create($curCard['cardDate']); echo date_format($date, 'd/m/Y'); ?></li>
													</ul>
													<ul class="actions">
													 <li><a target="_blank" href="article.php?id=<?php echo $curCard['cardId']; ?>" class="button">Consulter</a></li>
													 <div>
														 <li style="display: inline-block;"><a style="border: none !important; bottom:0;" title="Télécharger" target="_blank" href="<?php echo $curCard['cardURL']; ?>"><i class="fas fa-external-link-alt fa-lg"></i></a></li>
														 <?php if(isset($_SESSION['user']) AND $_SESSION['user'] == "admin"){ ?>
														 <li style="display: inline-block;"><a style="border: none !important; bottom:0;" href="cardModif.php?cardId=<?php echo $curCard['cardId']; ?>" class="text-warning"><i class="fas fa-edit fa-lg"></i></a></li>
														 <li style="display: inline-block;"><a style="border: none !important; bottom:0;" href="cardSuppr.php?cardId=<?php echo $curCard['cardId']; ?>" class="text-danger"><i class="fas fa-trash fa-lg"></i></a></li>
														 <?php } ?>
													 </div>
												 </ul>
 	                       </div>
	                      </div>
	                    </div>
											<?php
											}
										}
										?>
									</div>
									<?php if(!(isset($_GET['search']) AND !empty($_GET['search']))){ ?>
									<ul class="pagination">
										<li><span class="button small disabled">Prev</span></li>
										<li><a href="#" class="page active">1</a></li>
										<li><a href="#" class="page">2</a></li>
										<li><a href="#" class="page">3</a></li>
										<li><span>…</span></li>
										<li><a href="#" class="page">8</a></li>
										<li><a href="#" class="page">9</a></li>
										<li><a href="#" class="page">10</a></li>
										<li><a href="#" class="button small">Next</a></li>
									</ul>
								<?php } ?>
								</div>
							</section>
							<?php
								if(isset($_SESSION['user']) AND $_SESSION['user'] == "admin")
								{
							?>
							<section>
								<div class="inner">
									<header class="major">
										<h2>Ajouter une section</h2>
									</header>
									<form  method="post">
										<input type="text" required name="nom" placeholder="Nom de la section">
										<input type="text" required name="description" placeholder="Description de la section">
										<input type="text" required name="image" placeholder="Image de la section">
										<input type="url" name="mementoURL" placeholder="URL Du memento">
										<input type="text" required name="ancre" placeholder="Ancre de la section"><br>
										<input type="submit" value="Publier" class="primary" />
										<?php
											// On récupère les valeurs
											if(isset($_POST['nom']) AND isset($_POST['description']) AND isset($_POST['image']) AND isset($_POST['mementoURL']) AND isset($_POST['ancre']))
											{
												// On sécurise les valeurs
												$nom = htmlspecialchars($_POST['nom']);
												$description = htmlspecialchars($_POST['description']);
												$image = htmlspecialchars($_POST['image']);
												$mementoURL = htmlspecialchars($_POST['mementoURL']);
												$ancre = htmlspecialchars($_POST['ancre']);
												// On ajoute les valeurs dans la base de donnée
												if(!empty($nom) AND !empty($description) AND !empty($image) AND !empty($ancre))
												{
													$req = $bdd->prepare("INSERT INTO portfolio(portNom, portDesc, portImage, portMementoURL, portAncre) VALUES(?, ?, ?, ?, ?)");
													$req->execute(array($nom, $description, $image, $mementoURL, $ancre));
												} else $message = "Veuillez remplir le formulaire";
											}
										?>
									</form>
									<?php
									if(isset($message))
									{
									?>
										<div class="alert alert-warning" role="alert">
											<?php echo $message;	?>
										</div>
									<?php
									}
									?>
								</div>
							</section>
							<?php

								// fin si
								}
							?>
						<!-- Two -->
						<section id="two" class="spotlights">
						<?php
							$req = $bdd->prepare("SELECT * from portfolio");
							$req->execute();
							// On ouvre la boucle pour l'affichage des sections
								while($cur = $req->fetch())
								{
							?>
								<section id="<?php echo $cur['portAncre']; ?>">
									<a href="portfolioDisplay.php?portId=<?php echo $cur['portId']; ?>" class="image">
										<img src="images/portfolio/icon/<?php echo $cur['portImage']; ?>" alt="" data-position="center center" />
									</a>
									<div class="content">
										<div class="inner">
											<header class="major">
												<h3><?php echo $cur['portNom']; ?></h3>
											</header>
											<p><?php echo $cur['portDesc']; ?></p>
											<ul class="actions">
												<li><a href="portfolioDisplay.php?portId=<?php echo $cur['portId']; ?>" class="button">En savoir plus</a></li>
												<?php if(isset($_SESSION['user']) AND $_SESSION['user'] == "admin"){ ?>
													<li><a href="portfolioModif.php?portId=<?php echo $cur['portId']; ?>" class="button primary">Modifier</a></li>
													<li><a href="portfolioSuppr.php?portId=<?php echo $cur['portId']; ?>" onclick="if (confirm('Voulez-vous vraiment executer')){testerRadio(r1);}" class="button primary">Supprimer</a></li>
												<?php } ?>
											</ul>
										</div>
									</div>
								</section>


						<?php
						}
						?>

						</section>

						<!-- Three -->
            <section id="four">
              <div class="inner">
                <header class="major">
                  <h2>Ressources</h2>
                </header>
                <p>Toutes mes ressources sont disponible gratuitement sous modalité d'inscription. Ses ressources ont pour but d'aider la majorité à réalisé des projets que j'ai moi même mis en place. Mes cours et différents fichiers de configurations et de programmations y font parti.<br />Faites en bonne usage !</p>
                <ul class="actions">
                  <li><a href="ressources.php" class="button next">En savoir Plus</a></li>
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
			<script src="https://kit.fontawesome.com/3ba462b0e4.js" crossorigin="anonymous"></script>

	</body>
</html>
<?php/*
} else{
  header('Location: connexion.php?page=portfolio');
}*/
?>
