<?php
//include auth_session.php file on all user panel pages
include("auth_session.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Inicio - ITBANK</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <div class="form">
        <p>Hola, <?php echo $_SESSION['username']; ?>!</p>
        <p>Estas en ITBANK.</p>
        <p><a href="logout.php">Salir</a></p>
    </div>
</body>
</html>
