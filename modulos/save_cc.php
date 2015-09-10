<div class="content-wrapper">
<section class="content-header">
<h1>Nuevo Beneficiario<br>
<small>Guardando el Registro</small>
  </h1>
  </section>

  <section class="content">

<?php
unset($_SESSION['curp']);
extract($_POST);


if(isset($e_demografico)){$e_demografico=1;}else{$e_demografico=0;}
if(isset($jefe_familia)){$jefe_familia=1;}else{$jefe_familia=0;}
if(isset($luz)){$luz=1;}else{$luz=0;}
if(isset($agua)){$agua=1;}else{$agua=0;}
if(isset($drenaje)){$drenaje=1;}else{$drenaje=0;}
if(isset($gas)){$gas=1;}else{$gas=0;}
if(isset($tel)){$tel=1;}else{$tel=0;}
if(isset($internet)){$internet=1;}else{$internet=0;}
if(isset($discapacidad)){$discapacidad=1;}else{$discapacidad=0;}
if(isset($ben_colectivo)){$ben_colectivo=1;}else{$ben_colectivo=0;}
$letra = substr($curp,0,1);
$letra = strtoupper($letra);
$tabla = "beneficiarios_".$letra;
$tabla_apoyos = "apoyos_".$letra;
$fecha_alta = date("Y-m-d H:i:s");
$fecha_actualiza = date("Y-m-d H:i:s");

$ConsultaInsertar = "INSERT INTO $tabla
(curp,
fecha_alta,
primer_ap,
segundo_ap,
nombre,
id_oficial,
id_municipio,
id_localidad,
id_cp,
id_tipo_vialidad,
vialidad_nombre,
entre_calles,
num_ext,
num_int,
descripcion,
estudio_demografico,
perfil_sociodemografico,
estado_civil,
jefe_familia,
tipo_trabajo,
ingreso_mensual,
integrantes_familia,
dependientes_familia,
tipo_vivienda,
num_habitantes_vivienda,
serv_luz,
serv_agua,
serv_drenaje,
serv_gas,
serv_telefono,
serv_internet,
nivel_estudios,
seguridad_social,
discapacidad,
tipo_discapacidad,
beneficiario_colectivo,
grupo_vulnerable,
email_beneficiario,
telefono_beneficiarios,
fecha_actualizacion)

VALUES

('$curp',
'$fecha_alta',
'$FirstA',
'$SecondA',
'$Nombre',
'$identificacion',
'$municipio',
'$localidad',
'$asentamiento',
'$tipo_vial',
'$n_vialidad',
'$entre_vial',
'$ne_txt',
'$ni_txt',
'$descripcion_ubicacion',
'$e_demografico',
'$perfil_socio',
'$edo_civil',
'$jefe_familia',
'$tipo_trabajo',
'$ingreso',
'$integrantes',
'$dependientes',
'$tipo_vivienda',
'$habitantes_vivienda',
'$luz',
'$agua',
'$drenaje',
'$gas',
'$tel',
'$internet',
'$tipo_estudios',
'$tipo_seguridad',
'$discapacidad',
'$tipo_discapacidad',
'$ben_colectivo',
'$grupo',
'$email',
'$num_tel',
'$fecha_actualiza')";


$f_apoyo = $fecha_apoyo;

$ConsultaInsertarApoyos = "INSERT INTO $tabla_apoyos (
curp,
dependencia,
programa,
subprograma,
clave_presupuestal,
tipo_apoyo,
caracteristica_apoyo,
importe_apoyo,
no_apoyos,
fecha_apoyo,
periodicidad,
origen_recurso)
VALUES
('$curp',
'$dependencia',
'$programa',
'$subprograma',
'$clave_presupuestal',
'$tipo_apoyo',
'$caracteristica_apoyo',
'$importe_apoyo',
'$num_apoyos',
'$f_apoyo',
'$periodo',
'$origen_recurso'
)";



unset($_POST);
if($conexion->query($ConsultaInsertar)){

  if($conexion->query($ConsultaInsertarApoyos)){
   ?>
    <div class="callout callout-success">
                    <h4>Registro Guardado Correctamente</h4>
                    <p>El registro con curp <?php echo $curp; ?> se ha guarddo correctamente.</p>
      <p><a href="main.php?token=c4ca4238a0b923820dcc509a6f75849b"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span> Agregar otro Registro</a></p>
      <p><a href="#"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> Ver lista de beneficiarios de la dependencia </a></p>
                  </div>


    <?php

  }else{
    ?>
    <div class='alert alert-danger alert-dismissable'>
                    <button type='button' class='close' data-dismiss='alert' aria-hidden="true">&times;</button>
                    <h4><i class='icon fa fa-ban'></i> Error</h4>
                   Ha ocurrido un error al intentar guardar los apoyos, el beneficiario se registró, pero los apoyos no, si el error persite consulte al administrador.<br><?php printf("Mensaje de error: %s\n",$conexion->error); ?>
                  </div>
    <?php
  }

}else {
  ?>
   <div class='alert alert-danger alert-dismissable'>
                    <button type='button' class='close' data-dismiss='alert' aria-hidden="true">&times;</button>
                    <h4><i class='icon fa fa-ban'></i> Error</h4>
                   Ha ocurrido un error al intentar guardar los datos, si el error persite consulte al administrador.<br><?php printf("Mensaje de error: %s\n",$conexion->error); ?>
                  </div>
    <?php }
?>


</section>
</div>
