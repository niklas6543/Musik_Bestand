<?php
/**
 * User: Niklas
 * Date: 21.08.17
 */
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
        }


        if (count($rows) == 1)
        {
            if ($rows[0]['passwd'] == hash('sha256',$passwd))
            {
                $message = 'login';
                $_SESSION['login'] = true;
                $_SESSION['id'] = $rows[0]['id'];
                $_SESSION['name'] = $rows[0]['name'];

                redirect();
            }else
            {
                $message = 'warning';
            }
        }else
        {
             $message = 'warning';
        }
    }


    $smarty = new Smarty;
    $smarty->assign('message',$message);
    $smarty->display('templates/login.tpl');

?>
