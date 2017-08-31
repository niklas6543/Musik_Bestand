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
                    alben.id AS \'id\',   
                    alben.cover AS \'cover\', alben.name AS \'album\', 
                    interpret.name AS \'interpret\', alben.genre AS \'genre\',
                    alben.rating AS \'rating\', medium.name AS \'medium\',
                    alben.notice AS \'notice\', alben.year AS \'year\',   
                    alben.lentId AS \'lent\'   
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
        
        if ($album['lent'] != 0)
        {
            $lent = mysqli_fetch_assoc(mysqli_query($con, 'SELECT name FROM user WHERE id = '.$album['lent']));
            $album['lent'] = $lent['name'];
        }
        
        $sql = 'SELECT * 
                FROM titel
                WHERE albenId = '.$albumId;
        
        $result = mysqli_query($con, $sql);
        
        $titel = [];
        
        while ($row = mysqli_fetch_assoc($result))
        {
            array_push($titel, $row);
        }
        
		$mode = 'playlist';

        if (isset($_GET['lentit']))
        {
			$mode = 'lentit';
        }
        
        if (isset($_GET['backit']))
        {
        	$lentId = mysqli_fetch_assoc(mysqli_query($con, 'SELECT lentId FROM alben WHERE id='.$_GET['albumId']));
			
			if ($lentId['lentId'] == $_SESSION['id'])
			{
				$mode = 'backit';
			}

        }

        $smarty = new Smarty();
        $smarty->assign('mode', $mode);
        $smarty->assign('album', $album);
        $smarty->assign('titel', $titel);
        $smarty->display("templates/playlist.tpl");
    }else
    {
        echo 'no album selected';   
    }

    if (isset($_POST['answerLent']))
    {
		$id = $_GET['albumId'];

		if ($_POST['answerLent'] == 'yes')
		{
			$sql = 'UPDATE alben SET lentId='.$_SESSION['id'].' WHERE id='.$id;
			
			mysqli_query($con, $sql);
		}

       	header('Location: index.php?modus=playlist&albumId='.$id);
    }
    
	if (isset($_POST['answerBack']))
    {
		$id = $_GET['albumId'];

		if ($_POST['answerBack'] == 'yes')
		{
			$sql = 'UPDATE alben SET lentId=0 WHERE id='.$id;
			
			mysqli_query($con, $sql);
		}

       	header('Location: index.php?modus=playlist&albumId='.$id);
    }
?>
