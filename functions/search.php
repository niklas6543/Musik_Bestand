<?php
/**
 * File     : search.php
 * Version  : 1.0
 * Date     : 29.08.17
 * User     : Niklas
 */
    $rows = [];
    $values = [];
    
    if (isset($_POST['search']))
    {
        $conditions = [];
        
        if ($_POST['title'] != '')
        {   
            array_push($conditions, 'title.name LIKE ?');
            $values['title'] = '%'.$_POST['title'].'%';
        }

        if ($_POST['interpret'] != '')
        {   
            array_push($conditions, 'interpret.name LIKE ?');
            $values['interpret'] = '%'.$_POST['interpret'].'%';
        }

        if ($_POST['genre'] != '')
        {   
            array_push($conditions, 'alben.genre LIKE ?');
            $values['genre'] = '%'.$_POST['genre'].'%';
        }

        if ($_POST['year'] != '')
        {   
            array_push($conditions, 'alben.year LIKE ?');
            $values['year'] = '%'.$_POST['year'].'%';
        }

        if ($_POST['notice'] != '')
        {   
            array_push($conditions, 'alben.notice LIKE ?');
            $values['notice'] = '%'.$_POST['notice'].'%';
        }

        $sql = 'SELECT
                    alben.id AS \'albumId\', title.name AS \'title\',
                    alben.cover AS \'cover\', alben.name AS \'album\', 
                    interpret.name AS \'interpret\', alben.genre AS \'genre\',
                    alben.notice AS \'notice\'   
                FROM 
                (
                    (
                        (
                            alben 
                            INNER JOIN interpret ON alben.interpretId = interpret.id
                        )
                        INNER JOIN medium ON alben.mediumId = medium.id
                    )
                    INNER JOIN title ON title.albenId = alben.id
                )
                WHERE '.join(' AND ',$conditions).';';
        
        if ($stmt = $con->prepare($sql))
        {
            $stmt->bind_param(str_repeat('s', count($values)), ...array_values($values));
            $stmt->execute();
            $rows = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
            $stmt->close();
        }
   
        foreach ($values as $k => $v)
        {   
            
            $values[$k] = substr($v, 1, strlen($v)-2);
        }
    }        
    $smarty = new Smarty();
    $smarty->assign('values', $values);
    $smarty->assign('rows', $rows);
    $smarty->display("templates/search.tpl");
    
?>
