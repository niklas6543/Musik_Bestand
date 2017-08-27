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
                    alben.cover AS \'cover\', alben.name AS \'album\', 
                    interpret.name AS \'interpret\', alben.gerne AS \'gerne\',
                    alben.rating AS \'rating\', medium.name AS \'medium\',
                    alben.notice AS \'notice\', alben.year AS \'year\'   
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
        
        $sql = 'SELECT name, length, number, source
                FROM titel
                WHERE albenId = '.$albumId;
        
        $result = mysqli_query($con, $sql);
        
        $titel = [];
        
        while ($row = mysqli_fetch_assoc($result))
        {
            array_push($titel, $row);
        }
      
        $smarty = new Smarty();
        $smarty->assign('album', $album);
        $smarty->assign('titel', $titel);
        $smarty->display("templates/playlist.tpl");
    }else
    {
        echo 'no album selected';   
    }
?>
