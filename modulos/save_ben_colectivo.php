<?php
extract($_POST);
$limite_kb = 16384;
if(isset($_FILES['document_const'])){
  if($_FILES['document_const']['type']=="application/pdf" && $_FILES['document_const']['size'] <= $limite_kb * 1024){
  //este es el archivo temporal
  $archivo_temporal  = $_FILES['document_const']['tmp_name'];
  //este es el tipo de archivo
  $tipo = $_FILES['document_const']['type'];
  //leer el archivo temporal en binario
  $fp = fopen($archivo_temporal, 'r+b');
  $data = fread($fp, filesize($archivo_temporal));
  fclose($fp);
  //escapar los caracteres
  $data = $conexion->real_escape_string($data);
  }else{
  $data = null;
  }
}else{$data = null;}

$consulta = "INSERT INTO ben_colectivos(nombre,rfc,fecha_const,documentos_const,cp,t_vialidad,n_vialidad,entre_calle,num_ext,num_int,descripcion,actividad,cobertura,localidad) VALUES
('$nombre','$rfc','$fecha_const','$data','$n_asentamiento','$tipo_vial','$n_vialidad','$entre_vial','$ne_txt','$ni_txt','$descripcion_ubicacion','$actividad','$cobertura','$localidad')";

if($conexion->query($consulta)){
  echo "<script type='text/javascript'>
    alert('se ha registrado el grupo colectivo');
  </script>";
}else{

  echo "<script type='text/javascript'>
    alert('NO se ha registrado el grupo colectivo');
  </script>";

}

?>
