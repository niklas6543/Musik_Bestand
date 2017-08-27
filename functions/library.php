<?php
/**
 * File     : library.php
 * Version  : 1.0
 * Date     : 21.08.17
 * User     : Niklas
 */
    $sql = 'SELECT
                alben.id AS \'albumId\', 
                alben.cover AS \'cover\', alben.name AS \'album\', 
                interpret.name AS \'interpret\', alben.gerne AS \'gerne\',
                alben.rating AS \'rating\', medium.name AS \'medium\',
                alben.ownerId AS \'owner\', alben.lentId AS \'lent\',
                alben.notice AS \'notice\', alben.year AS \'year\'   
            FROM 
            (
                (
                    alben 
                    INNER JOIN interpret ON alben.interpretId = interpret.id
                )
                INNER JOIN medium ON alben.mediumId = medium.id
            );';
    
    $result = mysqli_query($con, $sql);
    
    $rows = [];
    
    while ($row = mysqli_fetch_assoc($result))
    {
        $owner = mysqli_fetch_assoc(mysqli_query($con, 'SELECT name FROM user WHERE id = '.$row['owner']));

        if (isset($owner))
        {
            $row['owner'] = $owner['name'];            
        }
        
        if ($row['lent'] == 0)
        {
            $row['lent'] = 'img/greenbtn.png';
        }
        array_push($rows, $row);
    }
    
  
  
    $smarty = new Smarty();
    $smarty->assign('rows', $rows);
    $smarty->display("templates/library.tpl");
?>
