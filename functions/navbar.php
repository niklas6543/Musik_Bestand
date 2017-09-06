<?php
/**
 * File     : navbar.php
 * Version  : 1.0
 * Date     : 21.08.17
 * User     : Niklas
 */
    $fields = [
        ['session' => 'home', 'name' => 'Home'],
		['session' => 'library', 'name' => 'Library'],
		['session' => 'search', 'name' => 'Search'],
    ];

    $smarty= new Smarty;

    if (!array_key_exists('session', $_GET))
    {
        $session='home';

    }else
    {
        $session = $_GET['session'];

    }

    $smarty->assign("session",$session);
    $smarty->assign("fields",$fields);
    $smarty->display("templates/navbar.tpl");
?>
