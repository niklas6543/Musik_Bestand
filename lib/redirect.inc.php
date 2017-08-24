<?php
/**
 * Created by PhpStorm.
 * User: Niklas
 * Date: 19.08.17
 * Time: 19:12
 */
    function redirect()
    {
        $host  = $_SERVER['HTTP_HOST'];
        $uri   = $_SERVER['REQUEST_URI'];
        header("Location: http://$host$uri");
        exit;
    }



?>