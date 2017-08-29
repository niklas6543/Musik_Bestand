<?php
/**
 * File     : navbar.php
 * Version  : 1.0
 * Date     : 21.08.17
 * User     : Niklas
 */
    $fields = [
        ['modus' => 'home', 'name' => 'Home'],
		['modus' => 'library', 'name' => 'Library'],
		['modus' => 'search', 'name' => 'Search'],
    ];

    $smarty= new Smarty;

    if (!array_key_exists('modus', $_GET))
    {
        $modus='home';

    }else
    {
        $modus = $_GET['modus'];

    }

    $smarty->assign("modus",$modus);
    $smarty->assign("fields",$fields);
    $smarty->display("templates/navbar.tpl");
?>
