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
                            <td><a href="index.php?session=playlist&albumId={$available['albumId']}"><img src="img/lupe.png" width="50" height="50" /></a></td>
                            <td><img src="{$available['cover']}" width="100" height="100" /></td>
                            <td>{$available['album']}</td>
                            <td>{$available['interpret']}</td>
                            <td>
                                {assign var="rating" value=$available}
                            	{include file="templates/stars.tpl"}
                            </td>
                            <td>{$available['owner']}</td>
                            <td>
                                {assign var="status" value=$available}
                            	{include file="templates/status.tpl"}
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
                            <td><a href="index.php?session=playlist&albumId={$lent['albumId']}"><img src="img/lupe.png" width="50" height="50" /></a></td>
                            <td><img src="{$lent['cover']}" width="100" height="100" /></td>
                            <td>{$lent['album']}</td>
                            <td>{$lent['interpret']}</td>
                            <td>
                                {assign var="rating" value=$lent}
                            	{include file="templates/stars.tpl"}
                            </td>
			    <td>
		                <a href="index.php?session=playlist&albumId={$lent['albumId']}&backit"><span class="glyphicon glyphicon-hand-right"> Give Back</span></a>
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
                            <td><a href="index.php?session=playlist&albumId={$rating['albumId']}"><img src="img/lupe.png" width="50" height="50" /></a></td>
                            <td><img src="{$rating['cover']}" width="100" height="100" /></td>
                            <td>{$rating['album']}</td>
                            <td>{$rating['interpret']}</td>
                            <td>
                            	{include file="templates/stars.tpl"}
                            </td>
                        </tr>
                {/foreach}
	    </table>
	</div>
    </body>
</html>
