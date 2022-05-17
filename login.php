<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Iniciar Sesion</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
<?php
    require('db.php');
    session_start();
    // Crea el inicio de sesion.
    if (isset($_POST['username'])) {
        $username = stripslashes($_REQUEST['username']);    // quitar backslashes
        $username = mysqli_real_escape_string($con, $username);
        $password = stripslashes($_REQUEST['password']);
        $password = mysqli_real_escape_string($con, $password);
        // Verificar el user en la database
        $query    = "SELECT * FROM `users` WHERE username='$username'
                     AND password='" . md5($password) . "'";
        $result = mysqli_query($con, $query) or die(mysql_error());
        $rows = mysqli_num_rows($result);
        if ($rows == 1) {
            $_SESSION['username'] = $username;
            // Redireccion a la pantalla del dashboard
            header("Location: dashboard.php");
        } else {
            echo "<div class='form'>
                  <h3>Nombre de usuario o contraseña incorrectos.</h3><br/>
                  <p class='link'>Click aca para <a href='login.php'>intentar de nuevo</a>.</p>
                  </div>";
        }
    } else {
?>
    <form class="form" method="post" name="login">
        <h1 class="login-title">Iniciar Sesion</h1>
        <input type="text" class="login-input" name="username" placeholder="Usuario" autofocus="true"/>
        <input type="password" class="login-input" name="password" placeholder="Contraseña"/>
        <input type="submit" value="Login" name="submit" class="login-button"/>
        <p class="link">¿No tenes una cuenta? <a href="registration.php">Solicitala</a></p>
  </form>
<?php
    }
?>
</body>
</html>
