<?php
/**
 * File     : home.php
 * Version  : 1.0
 * Date     : 21.08.17
 * User     : Niklas
 */
    
    $smarty = new Smarty;
    $smarty->assign('user',$_SESSION['name']);
    $smarty->display('templates/home.tpl');

?>
