<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <body>
        <div class="container">
            <h1>Welcome</h1>
            <p>Login as user {$user}</p> 
        </div>

	<div class="container">
            <h2>Available</h2>
            <table class="table table-striped">
            	<tr>
	            <th>Playlist</th>
	            <th>Cover</th>
                    <th>Name</th>
                    <th>Interpret</th>
                    <th>Rating</th>
                    <th>Owner</th>
                    <th>Status</th>
		</tr>
                {foreach $availables as $available}
                        <tr>
                            <td><a href="index.php?modus=playlist&albumId={$available['albumId']}"><img src="img/lupe.png" width="50" height="50" /></a></td>
                            <td><img src="{$available['cover']}" width="100" height="100" /></td>
                            <td>{$available['album']}</td>
                            <td>{$available['interpret']}</td>
                            <td>
                                {for $i=1 to 5}
                                    {if $i lte $available['rating']}
                                    	<span style="font-size: 30px">★</span>
                                    {else}
                                    	<span style="font-size: 30px">☆</span>
                                    {/if}
                                {/for}
                            </td>
                            <td>{$available['owner']}</td>
                            <td>
                                <a href="index.php?modus=playlist&albumId={$available['albumId']}&lentit" data-toggle="tooltip" data-placement="bottom" title="available">
                                    <img src="img/greenbtn.png" width="50" height="50" />
                                </a>
                            </td>
                        </tr>
                {/foreach}
	    </table>
	</div>
        
	<div class="container">
            <h2>Your Lend Albums</h2>
            <table class="table table-striped">
            	<tr>
	            <th>Playlist</th>
	            <th>Cover</th>
                    <th>Name</th>
                    <th>Interpret</th>
                    <th>Rating</th>
                    <th>&nbsp</th>
		</tr>
                {foreach $lents as $lent}
                        <tr>
                            <td><a href="index.php?modus=playlist&albumId={$lent['albumId']}"><img src="img/lupe.png" width="50" height="50" /></a></td>
                            <td><img src="{$lent['cover']}" width="100" height="100" /></td>
                            <td>{$lent['album']}</td>
                            <td>{$lent['interpret']}</td>
                            <td>
                                {for $i=1 to 5}
                                    {if $i lte $lent['rating']}
                                    	<span style="font-size: 30px">★</span>
                                    {else}
                                    	<span style="font-size: 30px">☆</span>
                                    {/if}
                                {/for}
                            </td>
			    <td>
		                <a href="index.php?modus=playlist&albumId={$lent['albumId']}&backit"><span class="glyphicon glyphicon-hand-right"> Give Back</span></a>
	                    </td>
                        </tr>
                {/foreach}
	    </table>
	</div>

	<div class="container">
            <h2>Best Ratings</h2>
            <table class="table table-striped">
		<tr>
                   <th>Playlist</th>
                   <th>Cover</th>
                   <th>Name</th>
                   <th>Interpret</th>
                   <th>Rating</th>
		</tr>
                {foreach $ratings as $rating}
                        <tr>
                            <td><a href="index.php?modus=playlist&albumId={$rating['albumId']}"><img src="img/lupe.png" width="50" height="50" /></a></td>
                            <td><img src="{$rating['cover']}" width="100" height="100" /></td>
                            <td>{$rating['album']}</td>
                            <td>{$rating['interpret']}</td>
                            <td>
                                {for $i=1 to 5}
                                    {if $i lte $rating['rating']}
                                    	<span style="font-size: 30px">★</span>
                                    {else}
                                    	<span style="font-size: 30px">☆</span>
                                    {/if}
                                {/for}
                            </td>
                        </tr>
                {/foreach}
	    </table>
	</div>
    </body>
</html>
