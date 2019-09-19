<!DOCTYPE HTML>
<?php
include 'include/connectBDD.php';

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
					<?php include 'include/nav.php'; ?>

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
						<section style="position: fixed; display: flex; flex-direction: column; ; z-index: 5; bottom: 0; right:0;" id="menu-secondary">
							<?php
								$req = $bdd->prepare("SELECT * from portfolio");
								$req->execute();
								// On ouvre la boucle pour l'affichage du menu secondaire
								while($cur = $req->fetch())
								{
									echo "<a class='scrolly icon-anchor' href='#".$cur['portAncre']."'><img src='images/".$cur['portImage']."' width='50px' height='50px' alt='' data-position='center center' /></a>";
								}
							?>
						</section>
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
										<img src="images/<?php echo $cur['portImage']; ?>" alt="" data-position="center center" />
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

						<?php

						if(isset($_POST['submitCommentaire']))
						{
							if(isset($_SESSION['user'], $_POST['commentaire'], $_POST['type']) AND !empty($_SESSION['user']) AND !empty($_POST['commentaire']) AND !empty($_POST['type']))
							{
								$user = htmlspecialchars($_SESSION['user']);
								$commentaire = htmlspecialchars($_POST['commentaire']);
								$type = htmlspecialchars($_POST['type']);

								$reqUser = $bdd->prepare("SELECT * FROM commentaires WHERE comUser = ?");
								$reqUser->execute(array($user));
								$userExist = $reqUser->rowCount();
								if($userExist == 5)
								{
									$c_erreur = "Vous avez atteint votre cota de commentaire !";
								} else {
									$ins = $bdd->prepare('INSERT INTO commentaires (comUser, comTexte, comType) VALUES (?, ?, ?)');
									$ins->execute(array($user, $commentaire, $type));
									$c_message = "Votre commentaire a bien été posté !";
								}
							} else {
								$c_erreur = "Tous les champs doivent être complétés";
							}
						}

						$commentaire = $bdd->prepare('SELECT * FROM commentaires ORDER BY comId desc');
						$commentaire->execute();
						?>
						<section style="background-color: #333856!important;" id="three">
							<div class="inner">
								<header class="major">
									<h2>Espace commentaire</h2>
								</header>
								<h3>Règlement</h3>
								<p>- Écrire dans un français correct - Respecter les autres - Pas de pubs et de spams - 5 Commentaires maximum</p>
								<?php
								if(isset($_SESSION['user']))
								{
								?>
								<form action="#commentaire" id="commentaire" method="post">
									<label for="type">Quel Sujet</label>
									<select name="type">
										<option value="Général" selected>Général</option>
										<?php
										$reqSujet = $bdd->prepare("SELECT * FROM portfolio");
										$reqSujet->execute();
										while($curSujet = $reqSujet->fetch())
										{
											echo "<option value='".$curSujet['portNom']."'>".$curSujet['portNom']."</option>";
										}
										?>
									</select><br>
									<label for="commentaire">Votre commentaire</label>
									<textarea name="commentaire"></textarea><br>
									<input type="submit" name="submitCommentaire" value="Poster">
								</form>
							<?php
							}
							if(isset($c_message))
							{
								?>
								<div class="alert alert-success" role="alert">
									<?php echo $c_message;?>
								</div>
								<?php
							}
							if(isset($c_erreur))
							{
								?>
								<div class="alert alert-danger" role="alert">
									<?php echo $c_erreur;?>
								</div>
								<?php
							}
							?>
							<br>
							<?php
							while($c=$commentaire->fetch())
							{
								?>
								<b><?= $c['comUser'] ?></b><br>
								Sujet : <?= $c['comType'] ?><br>
								<?= $c['comTexte'] ?><br><hr>
								<?php
							}
							?>
						</div>
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
<?php/*
} else{
  header('Location: connexion.php?page=portfolio');
}*/
?>
