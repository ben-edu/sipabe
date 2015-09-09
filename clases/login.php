<?php
function encriptar(){
  $cve=sha1($_POST['clave']);
  $cve=$cve."7436nfoifjhsdSDSDFSOD9873#&&9.ls;lo";
  $cve=md5($cve);
  return($cve);
}
$clave=encriptar();
$ConsultarUsuario="SELECT count(*) FROM usuarios WHERE usuario = '$usr' AND clave = '$clave'";
$Resultado=$conexion->query($ConsultarUsuario);
$row = $Resultado->fetch_array();
if($row[0]){
  require_once 'registro_variables.php';
  header("location:main.php");
  $conexion->close();
}else{
  $conexion->close();
  unset($_SESSION);
  session_destroy();
  header("location:login.php?mensaje=1");
  exit();
}
?>
