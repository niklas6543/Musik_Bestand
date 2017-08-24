<?php
	define('SERVER','localhost');
	define('USER','cdweb');
	define('PASSWORD', 'cdweb');
	define('NAME', 'cdweb_schunk');

	$con = mysqli_connect(SERVER,USER,PASSWORD,NAME);

	mysqli_autocommit($con,TRUE);
	error_reporting(E_ALL);

	if (!$con)
	{
		echo "keine Verbindung möglich";
		exit();
	}
?>
