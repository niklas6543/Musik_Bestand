<?php
/**
 * File     : autocompleteSearch.php
 * Version  : 1.0
 * Date     : 29.08.17
 * User     : Niklas
 */
    require_once('../lib/config.inc.php');
    
    // term includes user entry		
    if (isset($_GET['term']))
    {
        
       	$result = array();
        
        // which field is selected
        $mode = $_GET['mode'];
        
        $sql = '';

        //search for title?
        if ($mode == 'title')
        {
                $sql = 'SELECT name AS \'title\' FROM title WHERE name LIKE ?;';
        }

        //search for interpret?
        if ($mode == 'interpret')
        {
                $sql = 'SELECT name AS \'interpret\' FROM interpret WHERE name LIKE ?;';
        }

        //search for genre?
        if ($mode == 'genre')
        {
                $sql = 'SELECT genre FROM alben	WHERE genre LIKE ?;';
        }

        //create prepare sql statement
        if ($stmt = $con->prepare($sql))
        {
            $term = '%'.$_GET['term'].'%';
            $stmt->bind_param('s', $term);
            $stmt->execute();
            
	    $rows = $stmt->get_result()->fetch_all();
	
        
            //get all results    
            foreach ($rows as $row)
            {
                    $result[] = $row[0];
            }

            $stmt->close();
        }

        //create json of result
        echo json_encode($result);
		
		
    }
?>
