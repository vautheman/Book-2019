<?php
include 'assets/include/connectBDD.php';
if($bdd)
{
  echo "ok";
} else echo "fail";

$req = $bdd->prepare("SELECT * FROM card");
$req->execute();
while($cur = $req->fetch())
{
  echo $cur['cardNom'];
}
?>
