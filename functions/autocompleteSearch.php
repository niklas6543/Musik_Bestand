<?php
/**
 * File     : search.php
 * Version  : 1.0
 * Date     : 29.08.17
 * User     : Niklas
 */
    require_once('../lib/config.inc.php');
		
    if (isset($_GET['term']))
    {
       	$result = array();
	
        $sql = 'SELECT
           	    titel.name AS \'titel\', 
		    alben.name AS \'album\', 
		    interpret.name AS \'interpret\'
		FROM 
		(
		    (
	                titel
		        INNER JOIN alben ON titel.albenId = alben.id
	            )
		    INNER JOIN interpret ON alben.interpretId = interpret.id
		)
		WHERE titel.name LIKE ?;';

        if ($stmt = $con->prepare($sql))
        {
            $term = '%'.$_GET['term'].'%';
            $stmt->bind_param('s', $term);
            $stmt->execute();
            
	    $rows = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
	    
            foreach ($rows as $row)
            {
	        $result[] = $row['titel'];
	    }

            $stmt->close();
        }

        echo json_encode($result);
		
		
    }
?>
