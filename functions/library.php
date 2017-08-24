<?php
/**
 * File     : library.php
 * Version  : 1.0
 * Date     : 21.08.17
 * User     : Niklas
 */
    $sql = 'SELECT alben.name AS \'album\', interpret.name AS \'interpret\', gerne.name AS \'gerne\', alben.rating AS \'rating\', medium.name AS \'medium\'
            FROM 
            (
                (
                    (
                        alben 
                        INNER JOIN interpret ON alben.interpretId = interpret.id
                    )
                    INNER JOIN medium ON alben.mediumId = medium.id
                ) 
                INNER JOIN gerne ON gerne.id = interpret.gerneId
            )
            WHERE alben.userId = '.$_SESSION['id'].';';

    $result = mysqli_query($con, $sql);
    
    while ($row = mysqli_fetch_assoc($result))
    {
        print_r($row);
    }
    
  
  
    $smarty = new Smarty();
    $smarty->display("templates/library.tpl");
?>
