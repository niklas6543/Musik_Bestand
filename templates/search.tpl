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
        <div class="container">
            <h1>Search</h1>
			<div class="form-group">
			    <label for="titel">Titel</label>
			    <input type="text" class="form-control" id="titel">
			</div>	
			
			<div class="form-group">
			    <label for="interpret">Interpret</label>
			    <input type="text" class="form-control" id="interpret">
			</div>	
			
			<div class="form-group">
			    <label for="genre">Genre</label>
			    <input type="text" class="form-control" id="genre">
			</div>	
			
			<div class="form-group">
			    <label for="year">Year</label>
			    <input type="text" class="form-control" id="year">
			</div>

			<div class="form-group">
			    <label for="notice">Notice</label>
			    <input type="text" class="form-control" id="notice">
			</div>
		</div>
	</body>
</html>
