<!DOCTYPE HTML>
<?php
include 'assets/include/connectBDD.php';

if(isset($_POST['formInscription']))
{
	$nom = htmlspecialchars($_POST['nom']);
	$prenom = htmlspecialchars($_POST['prenom']);
	$user = htmlspecialchars($_POST['user']);
	$email = htmlspecialchars($_POST['email']);
	$password = sha1($_POST['password']);
	$passwordConfirm = sha1($_POST['passwordConfirm']);

  if(!empty($_POST['nom']) AND !empty($_POST['prenom']) AND !empty($_POST['email']) AND !empty($_POST['user']) AND !empty($_POST['password']) AND !empty($_POST['passwordConfirm']))
  {
		$reqUser = $bdd->prepare("SELECT * FROM membres WHERE memUtilisateur = ?");
		$reqUser->execute(array($user));
		$userExist = $reqUser->rowCount();
		if($userExist == 0)
		{
			$userlenght = strlen($user);
			if($userlenght <= 32)
			{
				if(filter_var($email, FILTER_VALIDATE_EMAIL))
				{
					$reqMail = $bdd->prepare("SELECT * FROM membres WHERE memEmail = ?");
					$reqMail->execute(array($email));
					$mailExist = $reqMail->rowCount();
					if($mailExist == 0)
					{
						if($password == $passwordConfirm)
						{
							$longueurKey = 15;
							$key = "";
							for($i=1;$i<$longueurKey;$i++) {
								$key .= mt_rand(0,9);
							}
							$insertMembres = $bdd->prepare("INSERT INTO membres(memNom, memPrenom, memEmail, memUtilisateur, memMotDePasse, memKey) VALUES(?, ?, ?, ?, ?, ?)");
							$insertMembres->execute(array($nom, $prenom, $email, $user, $password, $key));

							$header="MIME-Version: 1.0\r\n";
							$header.='From: "autheman-victor.fr"<contact@autheman-victor.fr>'."\n";
							$header.='Content-Type:text/html; charset"utf-8"'."\n";
							$header.='Content-Transfer-Encoding: 8bit';

							$messageMail='
							<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
							"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
							<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
							"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
							<html xmlns:v="urn:schemas-microsoft-com:vml">
								<head>
									<meta http-equiv="content-type" content="text/html; charset=utf-8">
									<meta charset="utf8">
									<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">
								</head>
								<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
									<table bgcolor="#242943"width="100%" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td bgcolor="#242943">
													<div>
														<table align="center" width="590" border="0" cellpadding="0" cellspacing="0">
															<tbody>
															<tr>
																<td height="30" style="font-size: 30px; line-height: 30px;">&nbsp;</td>
															</tr>
															<tr>
																<td align="center" style="text-align:center;">
																	<a href="http://autheman-victor.fr">
																		<img src="http://autheman-victor.fr/ancienSite/images/logo.png" width="78" border="0" alt="Logo autheman-victor.fr">
																	</a>
																</td>
															</tr>
															<tr>
																<td height="30" style="font-size: 30px; line-height: 30px;">&nbsp;</td>
															</tr>
															<tr>
																<td align="center" style="font-family: Helvetica, sans-serif; text-align: center; font-size:32px; color: #FFF; mso-line-height-rule: exactly; line-height: 28px;">
																	Confirmation de votre compte
																</td>
															</tr>
															<tr>
																<td height="30" style="font-size: 30px; line-height: 30px;">&nbsp;</td>
															</tr>
															<tr>
																<td align="center" style="font-family: Helvetica, sans-serif; text-align: center; font-size:15px; color: #878b99; mso-line-height-rule: exactly; line-height: 26px;">
																	<a href="https://autheman-victor.fr/confirmation.php?user='.urlencode($user).'&key='.$key.'">Confirmation</a>
																</td>
															</tr>
															<tr>
																<td height="30" style="font-size: 30px; line-height: 30px;">&nbsp;</td>
															</tr>
															</tbody>
														</table>
													</div>

												</td>
											</tr>
										</tbody>
									</table>
								</body>
							</html>
							';

							mail($email, "Confirmation de compte", $messageMail, $header);
							$messageValide = "Un mail de confirmation vous à été envoyé !";
						} else {
							$message = "Vos mot de passe ne correspondent pas !";
						}
					} else {
						$message = "Adresse mail déjà utilisé !";
					}
				} else {
					$message = "Votre addresse email n'est pas valide !";
				}
			} else {
				$message = "Votre nom d'utilisateur ne doit pas dépasser 255 caractères !";
			}
		} else {
			$message = "Le nom d'utilisateur existe déjà !";
		}
  } else {
    $message = "Tous les champs doivent êtres complétés";
  }
}

?>
<html>
	<head>
		<title>Connexion</title>
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
	<body class="is-preload">

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
					<?php include 'assets/include/nav.php'; ?>

				<!-- Main -->
					<div id="main" class="alt">

						<!-- One -->
							<section class="inscription" id="one">
								<form action="" method="post">
                  <div class="inscription">
                    <label for="nom">Nom</label>
                    <input type="text" name="nom" required="required" value="<?php if(isset($_POST['nom'])) { echo $_POST['nom']; } ?>">
                    <label for="prenom">Prénom</label>
                    <input type="text" name="prenom" required="required" value="<?php if(isset($_POST['prenom'])) { echo $_POST['prenom']; } ?>">
                    <label for="email">Email</label>
                    <input type="email" name="email" required="required" value="<?php if(isset($_POST['email'])) { echo $_POST['email']; } ?>">
                    <label for="user">Utilisateur</label>
                    <input type="text" name="user" required="required" value="<?php if(isset($_POST['user'])) { echo $_POST['user']; } ?>">
                    <label for="password">Mot de passe</label>
                    <input type="password" name="password" required="required">
										<label for="passwordConfirm">Confirmer le Mot de passe</label>
                    <input type="password" name="passwordConfirm" required="required"><br>
                    <input type="checkbox" name="conditions" id="conditions" required="required" />
                    <label for="conditions">J'accepte les <a href="mentions-legales/conditions-utilisations.php">conditions d'utilisation</a></label><br>
                    <ul class="actions">
  										<li><input type="submit" name="formInscription" value="Inscription" class="primary" /></li>
  										<li><input type="reset" value="Effacer" /></li>
  									</ul>
                  </div>

                </form>
								<?php
								if(isset($message))
								{
									?>
									<div class="alertMessage alert alert-warning" role="alert">
										<?php echo $message;	?>
									</div>
									<?php
								}
								if(isset($messageValide))
								{
									?>
									<div class="alertMessage alert alert-success" role="alert">
										<?php echo $messageValide;	?>
									</div>
									<?php
								}
								?>
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
