<?php	
	//mysqli connection
	$mysqli = new mysqli("localhost", "root", "", "leaderboard");
	
	if (mysqli_connect_errno()) {
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
	}
?>