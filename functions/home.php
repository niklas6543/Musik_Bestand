<?php
/**
 * File     : home.php
 * Version  : 1.0
 * Date     : 21.08.17
 * User     : Niklas
 */
    $sql = 'SELECT
                alben.id AS \'albumId\', 
                alben.cover AS \'cover\', alben.name AS \'album\', 
                interpret.name AS \'interpret\', alben.genre AS \'genre\',
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
            )
            ORDER BY alben.rating DESC;';
    
    $result = mysqli_query($con, $sql);
    
    $ratings = [];
    $availables = [];
    $lents = [];
    
    while ($row = mysqli_fetch_assoc($result))
    {
        $owner = mysqli_fetch_assoc(mysqli_query($con, 'SELECT name FROM user WHERE id = '.$row['owner']));

        if (isset($owner))
        {
            $row['owner'] = $owner['name'];            
        }

		if ($_SESSION['id'] == $row['lent'])
		{
			array_push($lents, $row);
		}
        
        if ($row['lent'] != 0)
        {
            $lent = mysqli_fetch_assoc(mysqli_query($con, 'SELECT name FROM user WHERE id = '.$row['lent']));
            $row['lent'] = $lent['name'];
        }else
        {
            array_push($availables, $row);
        }

        
        array_push($ratings, $row);
    }
    
    $smarty = new Smarty;
    $smarty->assign('user',$_SESSION['name']);
    $smarty->assign('lents', $lents);
    $smarty->assign('availables', $availables);
    $smarty->assign('ratings', $ratings);
    $smarty->display('templates/home.tpl');

?>
