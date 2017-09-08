<?php
	print_r($_GET);
	if ($_GET['rate'])
	{
		echo $_GET['rate'];
		exit;
	}
?>
<html>
	<head>
        <link rel="stylesheet" type="text/css" href="static/star-rating/rating.css" />
		<script src="static/jquery/jquery-3.1.0.min.js" type="text/javascript"></script>
		<script src="static/star-rating/rating.js" type="text/javascript"></script>
	</head>
	<script type="text/javascript">
	$(function(){
	    $('#star-rating').rating(function(vote, event){
		        // we have vote and event variables now, lets send vote to server.
		        $.ajax({
		            url: "test.php",
		            type: "GET",
		            data: {rate: vote},
		        }).done(function(data){
					alert(data);
				});
		    });
		});
	</script>
	<body>
		<div id="star-rating">
		    <input type="radio" name="example" class="rating" value="1" />
		    <input type="radio" name="example" class="rating" value="2" />
		    <input type="radio" name="example" class="rating" value="3" />
		    <input type="radio" name="example" class="rating" value="4" />
		    <input type="radio" name="example" class="rating" value="5" />
		</div>
	</body>
</html>

