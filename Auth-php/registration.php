<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Registro</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
<?php
    require('db.php');
    // Inserta valores en la database.
    if (isset($_REQUEST['username'])) {
        //quita los backslashes
        $username = stripslashes($_REQUEST['username']);
        //formatea los caracteres especiales
        $username = mysqli_real_escape_string($con, $username);
        $email    = stripslashes($_REQUEST['email']);
        $email    = mysqli_real_escape_string($con, $email);
        $password = stripslashes($_REQUEST['password']);
        $password = mysqli_real_escape_string($con, $password);
        $create_datetime = date("Y-m-d H:i:s");
        $query    = "INSERT into `users` (username, password, email, create_datetime)
                     VALUES ('$username', '" . md5($password) . "', '$email', '$create_datetime')";
        $result   = mysqli_query($con, $query);
        if ($result) {
            echo "<div class='form'>
                  <h3>Te registraste exitosamente.</h3><br/>
                  <p class='link'>Hace click aca para <a href='login.php'>iniciar sesion</a></p>
                  </div>";
        } else {
            echo "<div class='form'>
                  <h3>Faltan completar campos.</h3><br/>
                  <p class='link'>Click aca para <a href='registration.php'>registrarte</a> again.</p>
                  </div>";
        }
    } else {
?>
    <form class="form" action="" method="post">
        <h1 class="login-title">Registro</h1>
        <input type="text" class="login-input" name="username" placeholder="Usuario" required />
        <input type="text" class="login-input" name="email" placeholder="Correo">
        <input type="password" class="login-input" name="password" placeholder="Contraseña">
        <input type="submit" name="submit" value="Registrarse" class="login-button">
        <p class="link">¿Ya tenes una cuenta? <a href="login.php">Inicia Sesion acá</a></p>
    </form>
<?php
    }
?>
</body>
</html>
