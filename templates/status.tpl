
{if $row['lent'] eq '0'}
	<a href="index.php?session=playlist&albumId={$row['albumId']}&lentit" data-toggle="tooltip" data-placement="bottom" title="available">
		<img src="img/greenbtn.png" width="50" height="50" />
	</a>
{else}
	<a href="index.php?session=playlist&albumId={$row['albumId']}&backit" data-toggle="tooltip" data-placement="bottom" title="lent by {$row['lent']}">
		<img src="img/redbtn.png" width="50" height="50" />
	</a>
{/if}                                
