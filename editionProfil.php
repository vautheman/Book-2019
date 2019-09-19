<!DOCTYPE HTML>
<!--
	Site internet Créé par AUTHEMAN Victor

-->
<?php
include 'include/connectBDD.php';

if(isset($_SESSION['id']))
{
	$reqUser = $bdd->prepare("SELECT * FROM membres WHERE memId = ?");
	$reqUser->execute(array($_SESSION['id']));
	$user = $reqUser->fetch();

	if(isset($_POST['newNom']) AND !empty($_POST['newNom']) AND $_POST['newNom'] != $user['memNom'])
	{
		$newNom = htmlspecialchars($_POST['newNom']);
		$updateNom = $bdd->prepare("UPDATE membres SET memNom = ? WHERE memId = ?");
		$updateNom->execute(array($newNom, $_SESSION['id']));
	//	header('Location: profil.php?id=' . $_SESSION['id']);
	}

	if(isset($_POST['newPrenom']) AND !empty($_POST['newPrenom']) AND $_POST['newPrenom'] != $user['memPrenom'])
	{
		$newPrenom = htmlspecialchars($_POST['newPrenom']);
		$updatePrenom = $bdd->prepare("UPDATE membres SET memPrenom = ? WHERE memId = ?");
		$updatePrenom->execute(array($newPrenom, $_SESSION['id']));
	//	header('Location: profil.php?id=' . $_SESSION['id']);
	}

	if(isset($_POST['newEmail']) AND !empty($_POST['newEmail']) AND $_POST['newEmail'] != $user['memEmail'])
	{
		$newEmail = htmlspecialchars($_POST['newEmail']);
		$updateEmail = $bdd->prepare("UPDATE membres SET memEmail = ? WHERE memId = ?");
		$updateEmail->execute(array($newEmail, $_SESSION['id']));
	//	header('Location: profil.php?id=' . $_SESSION['id']);
	}

	if(isset($_POST['newUser']) AND !empty($_POST['newUser']) AND $_POST['newUser'] != $user['memUtilisateur'])
	{
		$newUser = htmlspecialchars($_POST['newUser']);
		$updateUser = $bdd->prepare("UPDATE membres SET memUtilisateur = ? WHERE memId = ?");
		$updateUser->execute(array($newUser, $_SESSION['id']));
	//	header('Location: profil.php?id=' . $_SESSION['id']);
	}

	if(isset($_POST['newPassword']) AND !empty($_POST['newPassword']) AND $_POST['newPassword'] != $user['memMotDePasse'])
	{
		$newPassword = htmlspecialchars($_POST['newPassword']);
		$updatePassword = $bdd->prepare("UPDATE membres SET memMotDePasse = ? WHERE memId = ?");
		$updatePassword->execute(array($newPassword, $_SESSION['id']));
	//	header('Location: profil.php?id=' . $_SESSION['id']);
	}

	if(isset($_POST['newPassword']) AND !empty($_POST['newPassword']) AND isset($_POST['newPasswordConfirm']) AND !empty($_POST['newPasswordConfirm']))
	{
		$password = sha1($_POST['newPassword']);
		$passwordConfirm = sha1($_POST['newPasswordConfirm']);

		if($password == $passwordConfirm)
		{
			$updatePassword = $bdd->prepare("UPDATE membres SET memMotDePasse = ? WHERE memId = ?");
			$updatePassword->execute(array($password, $_SESSION['id']));
		//	header('Location: profil.php?id=' . $_SESSION['id']);
		}else{
			$message = "Vos deux mots de passe ne correspondent pas !";
		}
	}
?>
<html>
	<head>
		<title>Edition de Profil</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="icon" href="images/favicon.ico" />
    <!-- CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/style.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <!-- SCRIPT -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	</head>
	<body class="is-preload" onselectstart="return false" oncontextmenu="return false" ondragstart="return false">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="index.php" class="logo"><img width="30px" src="images/logo.png"><strong>AUTHEMAN</strong> <span>Victor</span></a>
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
                  <h1>Édition de mon profil</h1>
								</header>
									<form action="" method="post">
	                  <div class="inscription">
	                    <label for="nom">Nom</label>
	                    <input type="text" name="newNom" required="required" value="<?php echo $user['memNom']; ?>">
	                    <label for="prenom">Prénom</label>
	                    <input type="text" name="newPrenom" required="required" value="<?php echo $user['memPrenom']; ?>">
	                    <label for="email">Email</label>
	                    <input type="email" name="newEmail" required="required"  value="<?php echo $user['memEmail']; ?>">
	                    <label for="user">Utilisateur</label>
	                    <input type="text" name="newUser" required="required"  value="<?php echo $user['memUtilisateur']; ?>">
	                    <label for="password">Mot de passe</label>
	                    <input type="password" name="newPassword">
											<label for="passwordConfirm">Confirmer le Mot de passe</label>
	                    <input type="password" name="newPasswordConfirm"><br>
	                    <ul class="actions">
	  										<li><input type="submit" name="formInscription" value="Mettre à jour" class="primary" /></li>
	  										<li><input type="reset" value="Annuler" /></li>
	  									</ul>
	                  </div>

	                </form>
                </header>

              </div>
              <?php
              if(isset($message))
              {
                ?>
                <div class="alertMessage alert alert-warning" role="alert">
                  <?php echo $message;	?>
                </div>
                <?php
              }
              ?>
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

	</body>
</html>
<?php
} else {
  header('Location: connexion.php?page=profil');
}
?>
