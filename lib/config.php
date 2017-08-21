<?php
	define('SERVER','localhost');
	define('USER','root');
	define('PASSWORD', '');
	define('NAME', 'MusikDB');

	$con = mysqli_connect(SERVER,USER,PASSWORD,NAME);

	mysqli_autocommit($con,TRUE);
	error_reporting(E_ALL);

	if (!$con)
	{
		echo "keine Verbindung möglich";
		exit();
	}
?>
