<?php
/**
 * File     : rating.php
 * Version  : 1.0
 * Date     : 15.10.17
 * User     : Niklas
 */
   
    require_once('../lib/config.inc.php');
    
    if ($_GET['rate'])
    {
            echo $_GET['rate'];
	   
            $sql = 'UPDATE alben SET rating='.$_GET['rate'].' WHERE id='.$_GET['albumId'];
            //echo $sql;			
	    mysqli_query($con, $sql);
            exit;
    }
?>
