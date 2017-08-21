<?php
/**
 * User: Niklas
 * Date: 21.08.17
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
            WHERE alben.userId = '.$_SESSION['id'];
    $result = mysqli_query($con, $sql);
    $rows = mysqli_fetch_array($result, MYSQL_ASSOC);
    print_r($rows); 
    $smarty = new Smarty();
    $smarty->display("templates/library.tpl");
?>
