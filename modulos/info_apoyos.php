<?php
$curp = $_GET['curp'];
$id_apoyo = $_GET['id_apoyo'];
$letra = strtoupper(substr($curp,0,1));
$consulta = "SELECT * FROM apoyos_$letra WHERE id_apoyo = $id_apoyo AND curp = $curp";
$ex_onsulta = $conexion

?>
