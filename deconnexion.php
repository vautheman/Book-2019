<?php
include 'assets/include/connectBDD.php';
$_SESSION = array();
session_destroy();
header('Location: connexion.php?page=profil');

?>
