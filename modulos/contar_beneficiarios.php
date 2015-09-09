<?php
 $letra = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
/*---- se cuentan el total de beneficiarios que hay ---- */
$beneficiarios_individuales = 0;
for($x = 0; $x<(count($letra));$x++){
  $tabla = "beneficiarios_".$letra[$x];
  $consulta = "SELECT COUNT(*) FROM $tabla";
  $res_consulta = $conexion->query($consulta);
  $row = $res_consulta->fetch_array();
  $beneficiarios_individuales = $beneficiarios_individuales + $row[0];
}

?>
