<?php	
	//Make Connection
	$mysqli = new mysqli("localhost", "root", "", "leaderboard");
	//Check Connection
	if(!$mysqli)
	{
		die("Connection Failed. ". mysqli_connect_error());
	}
	
	//Variable from the user
	$username = $_POST['username']; 
	$highscore = $_POST['highscore'];
	echo $username;
	echo $highscore;
	
	$stmt3 = $mysqli->prepare("INSERT INTO leaderboard (username, highscore) VALUES (?, ?)");
	$stmt3->bind_param('ss', $username, $highscore);
	$stmt3->execute();
	$stmt3->close();
?>