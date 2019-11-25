<?php
  session_start();
  $bdd = new PDO('mysql:host=91.216.107.164; dbname=authe858327', 'authe858327', '3q5krvgsyi');
  //$bdd = new PDO('sqlite:assets/include/database_portfolio.bdd');
  $bdd->query("SET NAMES UTF8");
?>

<div class="loader">
	<script type="text/javascript" src="/assets/js/jquery-latest.js"></script>
	<script type="text/javascript">
	$(window).load(function() {
		$(".loader").fadeOut("1000");
	})
	</script>
</div>
