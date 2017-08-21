<?php
/**
 * User: Niklas
 * Date: 21.08.17
 */
    $fields = [
        ['modus' => 'home', 'name' => 'Home'],
        ['modus' => 'library', 'name' => 'Library'],
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
