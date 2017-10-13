<style>
	#full {
		width: 20px;
		height: 20px;
		background: url(img/star.jpg)  0 -57px;
	}

	#clear {
		width: 20px;
		height: 20px;
		background: url(img/star.jpg) 0 0;
	}
</style>

{for $i=1 to 5}
    {if $i lte $rating['rating']}
        <!--<span style="font-size: 30px">★</span>-->
		<img id="full" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" />
    {else}
        <!--<span style="font-size: 30px">☆</span>-->
		<img id="clear" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" />
    {/if}
{/for}
