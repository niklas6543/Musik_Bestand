<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="static/bootstrap-3.3.7/dist/css/bootstrap.min.css" />
    </head>
    <body>
    <style>
        .center {
            margin: 0;
            position: absolute;
            top: 20%;
            left: 20%;
            border-width: auto;
            .background: lightgrey; 
        }
    </style>
    <div class="container center jumbotron">
        <h1>Loginsite</h1>
        <form action="index.php" method="post">
            <div class="form-group">
                <label for="user">Username</label>
                <input type="text" class="form-control" style="width: 20%" id="user" name="user" />
            </div>                    
            <div class="form-group">
                <label for="pwd">Password</label>
                <input type="password" class="form-control" style="width: 20%" id="pwd" name="passwd" />
            </div>                    
            <input type="submit" name="login" class="btn" value="Login" />
        </form>
        {if $message eq 'login'}
            <p>Login erfolgreich!!</p>
        {elseif $message eq 'warning'}
            <p>Login nicht möglich Benutzername/Passwort falsch!!</p>
        {/if}
    </div>
</html>
