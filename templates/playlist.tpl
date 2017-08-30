
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <body>
        <a href="index.php?modus=library">
           <span style="font-size:30px; position:fixed; top:10%; right:80%" class="glyphicon glyphicon-menu-left"></span>
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
                    {for $i=1 to 5}
                        {if $i lte $album['rating']}
                            <img src="img/star_full.png" width="25" height="25" />
                        {else}
                            <img src="img/star_clear.png" width="25" height="25" />
                        {/if}
                    {/for}
                    <br/>
                    {$album['medium']}<br/>
                </div>
                <div class"col-lg-1">
                    {if $album['lent'] eq '0'}
                        <a href="index.php?modus=playlist&albumId={$album['id']}&lentit" data-toggle="tooltip" data-placement="bottom" title="available">
                            <img src="img/greenbtn.png" width="50" height="50" />
                        </a>
                    {else}
                        <a href="#" data-toggle="tooltip" data-placement="bottom" title="lent by {$album['lent']}">
                            <img src="img/redbtn.png" width="50" height="50" />
                        </a>
                    {/if}                                
                </div>
            </div>
            {if $lentit eq 0}
                <div class="row">
                    <h1>Playlist</h1>
                    <table class="table table-striped">
                        <tr>
                            <th>Number</th>
                            <th>Name</th>
                            <th>Length</th>
                            <th>Source</th>
                        </tr>
                        {foreach $titel as $row}
                                <tr>
                                    <td>{$row['number']}</td>
                                    <td>{$row['name']}</td>
                                    <td>{$row['length']}</td>
                                    <td>{$row['source']}</td>
                                </tr>
                        {/foreach}
                    </table>
                </div>
            {else}
                <div class="container">
                    <h1>Renting</h1>
                    <p>Would you like to rent this album?</p>
                    <form action="index.php?modus=playlist&albumId={$album['id']}&lentit" method="post">
                        <input type="button" class="btn" value="no" />
                        <input type="button" class="btn" value="yes" />
                    </form>
                </div>
            {/if}
        </div>
    </body>
</html>
