<?php
    require('static/smarty/Smarty.class.php');
    require_once('lib/config.php');
    require('lib/redirect.php');

    $message = '';

    if (isset($_POST['login']))
    {
        echo 'test';
        $user = $_POST['user'];
        $passwd = $_POST['passwd'];

        $sql = 'SELECT * FROM user WHERE name = ?';

        $rows = [];

        if ($stmt = $con->prepare( $sql))
        {
            $stmt->bind_param('s', $user);
            $stmt->execute();
            $rows = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
            $stmt->close();
            print_r($rows[0]);
        }



        echo(hash('sha256',$passwd));
        echo($rows[0]['passwd']);

        if ($rows[0]['passwd'] == hash('sha256',$passwd))
        {
            $message = 'login';
            redirect();
        }else
        {
            $message = 'warning';
        }









    }


    $smarty = new Smarty;
    $smarty->assign('message',$message);
    $smarty->display('templates/login.tpl');


?>