<?php
/**
 * File     : playlist.php
 * Version  : 1.0
 * Date     : 27.08.17
 * User     : Niklas
 */
    if (isset($_GET['albumId']))
    {
        $albumId = $_GET['albumId'];

        $sql = 'SELECT
                    alben.id AS \'id\',   
                    alben.cover AS \'cover\', alben.name AS \'album\', 
                    interpret.name AS \'interpret\', alben.genre AS \'genre\',
                    alben.rating AS \'rating\', medium.name AS \'medium\',
                    alben.notice AS \'notice\', alben.year AS \'year\',   
                    alben.lentId AS \'lent\'   
                FROM 
                (
                    (
                        alben 
                        INNER JOIN interpret ON alben.interpretId = interpret.id
                    )
                    INNER JOIN medium ON alben.mediumId = medium.id
                )
                WHERE alben.id = '.$albumId;
        
        $result = mysqli_query($con, $sql);
        
        $album = mysqli_fetch_assoc($result);
        
        if ($album['lent'] != 0)
        {
            $lent = mysqli_fetch_assoc(mysqli_query($con, 'SELECT name FROM user WHERE id = '.$album['lent']));
            $album['lent'] = $lent['name'];
        }
        
        $sql = 'SELECT name, length, number, source
                FROM titel
                WHERE albenId = '.$albumId;
        
        $result = mysqli_query($con, $sql);
        
        $titel = [];
        
        while ($row = mysqli_fetch_assoc($result))
        {
            array_push($titel, $row);
        }
        

        if (isset($_GET['lentit']))
        {
            $lentit = $_SESSION['id'];   
        }else
        {
            $lentit = 0;
        }
        
        $smarty = new Smarty();
        $smarty->assign('lentit', $lentit);
        $smarty->assign('album', $album);
        $smarty->assign('titel', $titel);
        $smarty->display("templates/playlist.tpl");
    }else
    {
        echo 'no album selected';   
    }

    if (isset($_GET['no']))
    {
        header('Location: index.php?modus=library');
    }
?>
