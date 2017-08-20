<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <title>Loginseite</title>
        <script src="static/jquery/jquery-3.1.0.min.js" type="text/javascript"></script>
        <!--<link rel="stylesheet" type="text/css" href="css/sheet.css"/>-->
    </head>
    <body>
    <h1>Loginseite</h1>
    <form action="index.php" method="post">
        <table>
            <tr>
                <th align="left">Benutzername</th><td><input type="text" name="user" value="niklas" /></td>
            </tr><tr>
                <th align="left">Passwort</th><td><input type="password" name="passwd" value="test" /></td>
            </tr><tr>
                <td width="50%" ><input type="submit" name="login"  value="Anmelden" /></td>
            </tr>
        </table>
    </form>
    {if $message eq 'login'}
        <p>Login erfolgreich!!</p>
    {elseif $message eq 'warning'}
        <p>Login nicht möglich Benutzername/Passwort falsch!!</p>
    {/if}
</html>