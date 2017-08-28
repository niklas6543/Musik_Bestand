<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <script src="static/jquery/jquery-3.1.0.min.js" type="text/javascript"></script>
        <script src="static/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="css/sheet.css" />
        <link rel="stylesheet" type="text/css" href="static/bootstrap/css/bootstrap.min.css" />
    </head>
    <body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <ul class="nav navbar-nav">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Music Web</a>
            </div>
            {foreach $fields as $field}
                <li
                    {if $modus eq $field['modus']}
                        class="active"
                    {/if}
                >
                    <a href="index.php?modus={$field['modus']}">{$field['name']}</a>
                </li>
            {/foreach}
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="index.php?modus=logout">Logout</a></li>
        </ul>
    </nav>
    <div style="margin: 5%;"></div>
</html>
