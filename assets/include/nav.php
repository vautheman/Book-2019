<nav id="menu">
  <ul class="links">
    <li><a href="index.php">Accueil</a></li>
    <li><a href="about.php">A Propos</a></li>
    <li><a href="portfolio.php">Portfolio</a></li>
    <li><a href="gallery.php">Galerie</a></li>
    <li><a class="scrolly" href="index.php#contact">Contact</a></li>
  </ul>
  <ul class="actions stacked">
    <li><a href="ressources.php" class="button primary fit">Ressources</a></li>
    <?php
    if(isset($_SESSION['id']))
    {
      ?>
      <li><a href="deconnexion.php" class="button fit">Déconnexion</a></li>
      <li><a href="profil.php?id=<?php echo $_SESSION['id'] ?>" class="button fit">Mon Profil</a></li>
      <?php
    } else{
    ?>
    <li><a href="connexion.php?page=profil" class="button fit">Connexion</a></li>
    <?php
    }
    ?>
  </ul>
</nav>
