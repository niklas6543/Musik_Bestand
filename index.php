<?php
    session_start();
    require_once('static/smarty/Smarty.class.php');
    require_once('lib/config.inc.php');
    require_once('lib/redirect.inc.php');

    if (!isset($_SESSION['login']))
    {
	require('functions/login.php');
	$modus='home';
    }




    if (isset($_SESSION['login']))
    {
        if (!array_key_exists('modus', $_GET))
	{
	    $modus='home';
			
	}else
	{
	    $modus = $_GET['modus']; 
			
	}
		
		
		

	require('functions/navbar.php');
				
		
	$sites=[
	    ['name' => 'home', 'src' => 'functions/home.php'],
	    ['name' => 'library', 'src' => 'functions/library.php'],
	    ['name' => 'playlist', 'src' => 'functions/playlist.php'],
	    ['name' => 'search', 'src' => 'functions/search.php'],
	    ['name' => 'logout', 'src' => 'functions/logout.php']
	];


	foreach ($sites as $site)
	{
	    if ($site['name'] == $modus)
	    {
		require($site['src']);
		break;
	    }
	}
    }
?>


