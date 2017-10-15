<html>
    <head>
        <link rel="stylesheet" type="text/css" href="static/star-rating/rating.css" />
        <script src="static/jquery/jquery-3.1.0.min.js" type="text/javascript"></script>
        <script src="static/star-rating/rating.js" type="text/javascript"></script>
    </head>
    <body>
        <script type="text/javascript">
            $(function(){
                var GET = new URLSearchParams(window.location.search);

                $("#{$album['rating']}").attr('checked',true)
                $('#star-rating').rating(function(vote, event){
                    $.ajax({
                        url: "functions/rating.php",
                        type: "GET",
                        data: {
                            rate: vote,
                            albumId: GET.get('albumId')
                        },
                    })
                    /*.done(function(data){
                        alert(data);
                    });*/
                });
            });
        </script>

        <div id="star-rating">
            <input type="radio" name="rating" class="rating" id="1" value="1"/>
            <input type="radio" name="rating" class="rating" id="2" value="2"/>
            <input type="radio" name="rating" class="rating" id="3" value="3"/>
            <input type="radio" name="rating" class="rating" id="4" value="4"/>
            <input type="radio" name="rating" class="rating" id="5" value="5"/>
        </div>
    </body>
</html>
