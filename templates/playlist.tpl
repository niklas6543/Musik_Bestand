
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <body>
        <div>
            <table border="1">
                <tr>
                    <td rowspan="4"><img src="{$album['cover']}" width="250" height="250" /></td>
                </tr>
                <tr>
                    <td>{$album['album']}</td>
                </tr>
                <tr>
                    <td>{$album['interpret']}</td>
                </tr>
                <tr>
                    <td>{$album['year']}</td>
                </tr>
            </table>
        </div>
        <div class="container">
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
    </body>
</html>
