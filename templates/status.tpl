
{if $status['lent'] eq '0'}
	<a href="index.php?session=playlist&albumId={$status['albumId']}&lentit" data-toggle="tooltip" data-placement="bottom" title="available">
		<img src="img/greenbtn.png" width="50" height="50" />
	</a>
{else}
	<a href="index.php?session=playlist&albumId={$status['albumId']}&backit" data-toggle="tooltip" data-placement="bottom" title="lent by {$status['lent']}">
		<img src="img/redbtn.png" width="50" height="50" />
	</a>
{/if}                                
