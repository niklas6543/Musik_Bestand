<?php
/**
 * User: Niklas
 * Date: 21.08.17
 */
    
    $smarty = new Smarty;
    $smarty->assign('user',$_SESSION['name']);
    $smarty->display('templates/home.tpl');

?>
