<?php

if(isset($_POST['mailForm']))
{
  if(!empty($_POST['nom']) AND !empty($_POST['mail']) AND !empty($_POST['message']))
  {
    $nom = htmlspecialchars($_POST['nom']);
    $mail = htmlspecialchars($_POST['mail']);
    $messageMailExpediteur = htmlspecialchars($_POST['message']);

    $header="MIME-Version: 1.0\r\n";
    $header.='From: "autheman-victor.fr"<authirard.victor@gmail.com>'."\n";
    $header.='Content-Type:text/html; charset"utf-8"'."\n";
    $header.='Content-Transfer-Encoding: 8bit';

    $messageMail='
    <html>
      <body>
        <div align="center">
          <h4>Vous avez reçu un mail à partir de votre site Internet !</h4>
          <p>Nom de l\'expéditeur : '.$nom.'<br>
          <p>Email de l\'expéditeur :'.$mail.'<br>
          <br>
          <p>'.$messageMailExpediteur.'</p>
          <br>

        </div>
      </body>
    </html>
    ';

    mail("authirard.victor@gmail.com", "CONTACT - WebSite", $messageMail, $header);

  } else {
    $erreur = "Tous les champs doivent êtres complétés !";
  }
}
if(isset($_GET['mail']))
{
  if($_GET['mail'] == 1)
  {

  }
}
?>

<section id="contact">
  <div class="inner">
    <section>
      <form id="form" method="post" action="#form">
        <div class="fields">
          <div class="field half">
            <label for="nom">Nom</label>
            <input type="text" name="nom" id="name" value="<?php if(isset($_POST['nom'])) { echo $_POST['nom']; } ?>" />
          </div>
          <div class="field half">
            <label for="mail">Email</label>
            <input type="email" name="mail" id="email" value="<?php if(isset($_POST['mail'])) { echo $_POST['mail']; } ?>" />
          </div>
          <div class="field">
            <label for="message">Message</label>
            <textarea name="message" id="message" rows="6"><?php if(isset($_POST['message'])) { echo $_POST['message']; } ?></textarea>
          </div>
        </div>
        <ul class="actions">
          <li><input type="submit" name="mailForm" value="Envoyer" class="primary" /></li>
          <li><input type="reset" value="Effacer" /></li>
        </ul>
      </form>

      <?php
      if(isset($erreur))
      {
        ?>
        <div class="alert alert-danger" role="alert">
          <strong style="color: #721c24;">Erreur !</strong><?php echo $erreur; ?>
        </div>
        <?php
      }
      ?>




    </section>
    <section class="split">
      <section>
        <div class="contact-method">
          <span class="icon alt fa-envelope"></span>
          <h3>Email</h3>
          <a href="mailto:contact@autheman-victor.fr">contact@autheman-victor.fr</a>
        </div>
      </section>
      <section>
        <div class="contact-method">
          <span class="icon alt fa-phone"></span>
          <h3>Téléphone</h3>
          <span>06 49 25 95 06</span>
        </div>
      </section>
      <section>
        <div class="contact-method">
          <span class="icon alt fa-home"></span>
          <h3>Address</h3>
          <span>6 Rue des Remparts<br />
          GAP, 05000<br />
          FRANCE, Hautes-Alpes</span>
        </div>
      </section>
    </section>
  </div>
</section>
