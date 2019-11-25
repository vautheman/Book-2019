<nav id="menu">
  <div class="row">
    <style media="screen">
      .travelNav div.travelNavTitle{
        visibility: hidden;
      }

      .travelNavTitle{
        width: 100%;
        height: 100%;
        padding-top: 50%;
        opacity: 0;
        transition: translate(-50%, -50%);
        transition:visibility 0.2s linear,opacity 0.2s linear;
        background-color: rgba(255, 255, 255, 0.5);
      }

      .travelNav:hover div.travelNavTitle{
        visibility: visible;
        opacity: 1;
      }
    </style>
    <a href="travel.php?page=travel" style="padding: 0; position: relative; background-image: url('images/travel.jpg'); background-size: cover; background-position: center center; border: white solid 3px;" class="col travelNav">
      <div class="travelNavTitle">
        <h2 class="text-dark border border-dark" style="width: 50%; margin-right: auto; margin-left: auto;">TRAVEL</h2>
      </div>
    </a>
    <div class="col mr-4">
      <ul class="links">
        <li><a href="index.php">Accueil</a></li>
        <li><a href="about.php">A Propos</a></li>
        <li><a href="portfolio.php">Portfolio</a></li>
        <li><a class="scrolly" href="index.php#contact">Contact</a></li>
      </ul>
      <ul class="actions stacked" style="width: 70%; margin-right: auto; margin-left: auto;">
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
    </div>
  </div>
</nav>
