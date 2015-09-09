<?php

//Parametros de Configuración
$portal_activo = true;
if(!$portal_activo){
  header('Location:under_const.php');
  exit;
}

if(!isset($index)){

$host_bd = "localhost";
$usuario_bd = "sipubusrbd";
$clave_bd =  "Pib45Rhs.3ed.?fkd";
$bd = "padron_beneficiarios";
$conexion=new mysqli($host_bd,$usuario_bd,$clave_bd,$bd);
$conexion->query("SET NAMES utf8");


}

?>
