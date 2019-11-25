<?php
// On se connecte à la base de donnée
include 'assets/include/connectBDD.php';
// On vérifi si l'administrateur est connecté
if(isset($_SESSION['user']) AND $_SESSION['user'] == "admin")
{
  // On vérifi si l'identifiant de la section a supprimer existe
  if(isset($_GET['portId']) AND !empty($_GET['portId']) AND $_GET['portId'] > 0)
  {
    // On sécurise les valeurs
    $portId = htmlspecialchars($_GET['portId']);
    // supprime toutes les cartes
    $req = $bdd->prepare("DELETE FROM card WHERE portId = ?");
    $req->execute(array($portId));

    // On supprime la section de la base de donnée
    $req = $bdd->prepare("DELETE FROM portfolio WHERE portId = ?");
    $req->execute(array($portId));
    header("Location: portfolio.php");
  } else header("Location: portfolio.php");
} else header("Location: portfolio.php");
?>
