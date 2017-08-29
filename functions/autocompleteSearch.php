<?php
	require_once('lib/config.inc.php');
	
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
					INNER JOIN alben ON alben.interpretId = interpret.id
				)
				WHERE titel.name LIKE \'%?%\';';

        if ($stmt = $con->prepare( $sql))
        {
            $stmt->bind_param('s', $_GET['term']);
            $stmt->execute();
            
			while ($row = $stmt->fetch_all(MYSQLI_ASSOC))
			{
				$result[] = $row['titel'];
			}

            $stmt->close();
        }

		echo json_encode($result);
		
		
	}
?>
