<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <body>
        <div class="container">
            <h1>Library</h1>
            <table class="table table-striped">
                <tr>
                    <th>Playlist</th>
                    <th>Cover</th>
                    <th>Name</th>
                    <th>Interpret</th>
                    <th>Gerne</th>
                    <th>Year</th>
                    <th>Rating</th>
                    <th>Medium</th>
                    <th>Owner</th>
                    <th>Status</th>
                    <th>Notice</th>
                </tr>
                {foreach $rows as $row}
                        <tr>
                            <td><a href="index.php?modus=playlist&albumId={$row['albumId']}"><img src="img/lupe.jpg" width="50" height="50" /></a></td>
                            <td><img src="{$row['cover']}" width="100" height="100" /></td>
                            <td>{$row['album']}</td>
                            <td>{$row['interpret']}</td>
                            <td>{$row['gerne']}</td>
                            <td>{$row['year']}</td>
                            <td>{$row['rating']}</td>
                            <td>{$row['medium']}</td>
                            <td>{$row['owner']}</td>
                            <td>
                                {if $row['lent'] eq '0'}
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="available">
                                        <img src="img/greenbtn.png" width="50" height="50" />
                                    </a>
                                {else}
                                    <a href="#" data-toggle="tooltip" data-placement="bottom" title="lent by {$row['lent']}">
                                        <img src="img/redbtn.png" width="50" height="50" />
                                    </a>
                                {/if}                                
                            </td>
                            <td>{$row['notice']}</td>
                        </tr>
                {/foreach}
            </table>
        </div>
    </body>
</html>
