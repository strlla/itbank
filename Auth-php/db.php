<?php
    // Enter your host name, database username, password, and database name.
    // If you have not set database password on localhost then set empty.
    $con = mysqli_connect("localhost","admin_itba","aRrcpn2z2f7hdlD5","admin_itba");
    // Check connection
    if (mysqli_connect_errno()){
        echo "Error en la conexion a la base de datos: " . mysqli_connect_error();
    }
?>
