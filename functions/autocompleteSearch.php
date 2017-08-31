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
		$mode = $_GET['mode'];
		$sql = '';

		if ($mode == 'titel')
		{
			$sql = 'SELECT name AS \'titel\' FROM titel	WHERE name LIKE ?;';
		}

		if ($mode == 'interpret')
		{
			$sql = 'SELECT name AS \'interpret\' FROM interpret	WHERE name LIKE ?;';
		}

		if ($mode == 'genre')
		{
			$sql = 'SELECT genre FROM alben	WHERE genre LIKE ?;';
		}

        if ($stmt = $con->prepare($sql))
        {
            $term = '%'.$_GET['term'].'%';
            $stmt->bind_param('s', $term);
            $stmt->execute();
            
	    $rows = $stmt->get_result()->fetch_all();
	    
        foreach ($rows as $row)
        {
	        $result[] = $row[0];
	    }

            $stmt->close();
        }

        echo json_encode($result);
		
		
    }
?>
