<?php
//$conexion = new mysqli("10.221.12.3","sipub_usr","sipub","padron_beneficiarios");
$conexion = new mysqli('localhost','sipubusrbd','Pib45Rhs.3ed.?fkd','padron_beneficiarios');
$conexion->query("SET NAMES 'utf8'");
$id_prog_poa = $_POST["elegido"];
$consulta = "SELECT * FROM subprogramas_poa WHERE id_programa_poa = '$id_prog_poa'";
$ex_consulta = $conexion->query($consulta);
$opciones="<option value='0'>-Seleccione-</option>";
while($r_consulta = $ex_consulta->fetch_assoc()){
  $opciones = $opciones."<option value='".$r_consulta['id_subprograma_poa']."'>".$r_consulta['clave']." - ".$r_consulta['descripcion']."</option>";
}
echo $opciones;
?>
