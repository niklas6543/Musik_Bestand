<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <body>
        <script type="text/javascript">
	    $(function(){
	        $('#titel').autocomplete({
		    source: 'functions/autocompleteSearch.php',
		    minLength: 1
		});
	    });
	</script>
        <div class="container col-lg-3">
            <h1>Search</h1>
            <form action="index.php?modus=search" method="post">
                <div class="form-group">
                    <label for="titel">Titel</label>
                    <input type="text" name="titel" class="form-control" id="titel"
                        {if array_key_exists(titel, $values)} value="{$values['titel']}"{/if} />
                </div>	
                        
                <div class="form-group">
                    <label for="interpret">Interpret</label>
                    <input type="text" name="interpret" class="form-control" id="interpret"
                        {if array_key_exists(interpret, $values)} value="{$values['interpret']}"{/if} />

                </div>	
                
                <div class="form-group">
                    <label for="genre">Genre</label>
                    <input type="text" name="genre" class="form-control" id="genre"
                        {if array_key_exists(genre, $values)} value="{$values['genre']}"{/if} />

                </div>	
                
                <div class="form-group">
                    <label for="year">Year</label>
                    <input type="text" name="year"  class="form-control" id="year" 
                        {if array_key_exists(year, $values)} value="{$values['year']}"{/if} />

                </div>

                <div class="form-group">
                    <label for="notice">Notice</label>
                    <input type="text" class="form-control" id="notice"
                        {if array_key_exists(notice, $values)} value="{$values['notice']}"{/if} />

                </div>
                <input type="submit" name="search" class="btn" value="Search" />
            </form>
        </div>
        {if $rows}
            <div class="container col-lg-9">
                <table class="table table-striped">
                    <tr>
                        <th>Playlist</th>
                        <th>Cover</th>
                        <th>Titel</th>
                        <th>Interpret</th>
                        <th>Genre</th>
                        <th>Notice</th>
                    </tr>
                    {foreach $rows as $row}
                        <tr>
                            <td><a href="index.php?modus=playlist&albumId={$row['albumId']}"><img src="img/lupe.png" width="50" height="50" /></a></td>
                            <td><img src="{$row['cover']}" width="100" height="100" /></td>
                            <td>{$row['titel']}</td>
                            <td>{$row['interpret']}</td>
                            <td>{$row['genre']}</td>
                            <td>{$row['notice']}</td>
                        </tr>
                    {/foreach}
                </table> 
            </div> 
        {/if}
    </body>
</html>
