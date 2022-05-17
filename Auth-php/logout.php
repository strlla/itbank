<?php
    session_start();
    // Cerrar sesion
    if(session_destroy()) {
        // Redireccionar al inicio de sesion
        header("Location: login.php");
    }
?>
