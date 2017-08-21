<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <script src="include/jquery/jquery-3.1.0.min.js" type="text/javascript"></script>
    </head>
    <body>
    <ul>
        {foreach $fields as $field}
            <li><a href="index.php?modus={$field['modus']}">{$field['name']}</a></li>
        {/foreach}
        <li style="float:right;"><a href="index.php?modus=logout">Logout</a></li>
    </ul>
</html>
