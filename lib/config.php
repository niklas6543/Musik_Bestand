<?php
	define("server","localhost");
	define("benutzer","root");
	define("passwort","");
	define("name","MusikDB");

	$con=mysqli_connect(server,benutzer,passwort,name);
	mysqli_autocommit($con,TRUE);
	error_reporting(E_ALL);
	if (!$con)
	{
		echo "keine Verbindung möglich";
		exit();
	}
?>
