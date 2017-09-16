<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <meta charset="UTF-8" />
    
        <link rel="stylesheet" type="text/css" href="static/bootstrap-3.3.7/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" type"text/css" href="static/jquery-ui-1.12.1.custom/jquery-ui.min.css" />
	
        <script src="static/jquery/jquery-3.1.0.min.js" type="text/javascript"></script>
        <script src="static/jquery-ui-1.12.1.custom/jquery-ui.min.js" type="text/javascript"></script>
        <script src="static/bootstrap-3.3.7/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <title>{$session|ucfirst}</title>
    </head>
    <body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <ul class="nav navbar-nav">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Music Web</a>
            </div>
            {foreach $fields as $field}
                <li
                    {if $session eq $field['session']}
                        class="active"
                    {/if}
                >
                    <a href="index.php?session={$field['session']}">{$field['name']}</a>
                </li>
            {/foreach}
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="index.php?session=logout">Logout</a></li>
        </ul>
    </nav>
    <div style="margin: 5%;"></div>
</html>
