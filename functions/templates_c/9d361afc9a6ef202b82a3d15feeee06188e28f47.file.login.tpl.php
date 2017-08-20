<?php /* Smarty version Smarty-3.1.21-dev, created on 2017-08-19 19:03:58
         compiled from "../templates/login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:208486539459986f7e419a06-47379640%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9d361afc9a6ef202b82a3d15feeee06188e28f47' => 
    array (
      0 => '../templates/login.tpl',
      1 => 1503144594,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '208486539459986f7e419a06-47379640',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'message' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_59986f7e4677b7_76730980',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59986f7e4677b7_76730980')) {function content_59986f7e4677b7_76730980($_smarty_tpl) {?><!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <title>Loginseite</title>
        <?php echo '<script'; ?>
 src="../static/jquery/jquery-3.1.0.min.js" type="text/javascript"><?php echo '</script'; ?>
>
        <!--<link rel="stylesheet" type="text/css" href="css/sheet.css"/>-->
    </head>
    <body>
    <h1>Loginseite</h1>
    <form action="../function/index.php" method="post">
        <table>
            <tr>
                <th align="left">Benutzername</th><td><input type="text" name="user" /></td>
            </tr><tr>
                <th align="left">Passwort</th><td><input type="password" name="passwd" /></td>
            </tr><tr>
                <td width="50%" ><input type="submit" name="login"  value="Anmelden" /></td>
            </tr>
        </table>
    </form>
    <?php if ($_smarty_tpl->tpl_vars['message']->value=='login') {?>
        <p>Login erfolgreich!!</p>
    <?php } elseif ($_smarty_tpl->tpl_vars['message']->value=='warning') {?>
        <p>Login nicht möglich Benutzername/Passwort falsch!!</p>
    <?php }?>
</html><?php }} ?>
