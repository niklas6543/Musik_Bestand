<?php
    require('../static/smarty/Smarty.class.php');
    require_once('../lib/config.php');

    $message = '';

    if (isset($_POST['login']))
    {
        $user = $_POST['user'];
        $passwd = $_POST['passwd'];

        $sql = 'SELECT * FROM user WHER user = ?';
        $stmt = $con->prepare($sql);
        $stmt->bind_param($user);
        $rows = $stmt->execute()->fetch_all(MYSQLI_ASSOC);
        $stmt->close();

        if ($rows['passwd'] == hash('sha256',$passwd))
        {
            $message = 'login';
        }else
        {
            $message = 'warning';
        }

        $smarty= new Smarty;
        $smarty->assign('message',$message);
        $smarty->display('../templates/login.tpl');



    }







?>