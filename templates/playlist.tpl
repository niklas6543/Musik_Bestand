
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <body>
        <style>
            .top-buffer { 
                margin-top:5%; 
            }
        </style>
        <a href="index.php?session=library">
           <span style="font-size:30px; position:fixed; top:10%; " class="glyphicon glyphicon-menu-left"></span>
        </a>

        <div class="container">
            <div class="row">
                <div  class="col-lg-3">
                    <img src="{$album['cover']}" width="250" height="250" />
                </div>
                <div class="col-lg-8">    
                    {$album['album']}<br/>
                    {$album['interpret']}<br/>
                    {$album['genre']}<br/>
                    {$album['year']}<br/>
                    {include file="templates/star-rating.tpl"}<br/>
                    {$album['medium']}<br/>
                </div>
                <div class"col-lg-1">
                    {assign var="status" value=$album}
                    {include file="templates/status.tpl"}
                </div>
            </div>
            {if $mode eq 'playlist'}
                <div class="row">
                    <h1>Playlist</h1>
                    <table class="table table-striped">
                        <tr>
                            <th>Number</th>
                            <th>Name</th>
                            <th>Length</th>
                            <th>Source</th>
                        </tr>
                        {foreach $title as $row}
                             <tr>
                                 <td>{$row['number']}</td>
                                 <td>{$row['name']}</td>
                                 <td>{$row['length']}</td>
                                 <td>
	        	             <a href="index.php?session=playlist&albumId={$album['albumId']}&titleId={$row['id']}">
		        	         <img src="img/play.png" width="50" height="50" />
			            </a>
			        </td>
                           </tr>
                        {/foreach}
                    </table>
                </div>
            {else if $mode eq 'play'}
                <div class="row top-buffer">
                    <iframe width="560" height="315" src="{$source}?showinfo=0" frameborder="1" allowfullscreen></iframe>
                </div>
            {else if $mode eq 'lentit'}
                <div class="row top-buffer">
                    <h1>Renting</h1>
                    <p>Would you like to rent this album?</p>
                    <form action="index.php?session=playlist&albumId={$album['albumId']}&lentit" method="post">
                        <input type="submit" name="answerLent" class="btn" value="no" />
                        <input type="submit" name="answerLent" class="btn" value="yes" />
                    </form>
                </div>
            {else if $mode eq 'backit'}
                <div class="row top-buffer">
                    <h1>Give Back</h1>
                    <p>Would you like to give this album back?</p>
                    <form action="index.php?session=playlist&albumId={$album['albumId']}&backit" method="post">
                        <input type="submit" name="answerBack" class="btn" value="no" />
                        <input type="submit" name="answerBack" class="btn" value="yes" />
                    </form>
                </div>
            {/if}
        </div>
    </body>
</html>
