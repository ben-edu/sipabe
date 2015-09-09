
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
<h1>Informaci&oacute;n del Beneficiario<br>
<small>Beneficiario Registrado con CURP</small>
</h1>
</section>
<section class="content">
<div class='row'>
<div class='col-xs-12'>
<div class="nav-tabs-custom">
<ul class="nav nav-tabs">
<li class="active"><a href="#informacion" data-toggle="tab">Informaci&oacute;n y Apoyos</a></li>
<li><a href="#direccion" data-toggle="tab">Direcci&oacute;n de Residencia</a></li>
<li><a href="#estudio" data-toggle="tab">Estudio Socioecon&oacute;mico</a></li>
</ul>
<div class="tab-content">

<!-- ------------------ datos info_personal ----------------------------- -->


  <div class="tab-pane active" id="informacion">


  <?php
 unset($_SESSION['curp']);
  $letra = strtoupper(substr($_GET['curp'],0,1));
  $consulta = "SELECT
  b.curp as curp,
  b.fecha_alta as fecha_alta,
  b.primer_ap as primer_ap,
  b.segundo_ap as segundo_ap,
  b.nombre as nombre,
  i.identificacion as identificacion
  FROM
  beneficiarios_$letra b
  inner join identificaciones i on (b.id_oficial = i.id_identificacion)
  where curp = '".$_GET['curp']."'";
  $ex_consulta = $conexion->query($consulta);
  $r_cons = $ex_consulta->fetch_assoc();
  $ex_consulta->free();
  unset($consulta);
  unset($ex_consulta);
?>

    <div class="row">
  <div class="col-md-1">
      <img src="imagenes/default.png" class="img-circle" alt="img_usuario" width="100">
      </div>
      <div class="col-md-11">

         <b>CURP:</b>&nbsp;<code> <?php print(strtoupper($r_cons['curp'])); ?> </code><br>
<b>Fecha de Registro:</b>&nbsp;<?php print(strtoupper($r_cons['fecha_alta'])); ?><br>
<b>Primer Apellido:</b>&nbsp;<?php print(strtoupper($r_cons['primer_ap'])); ?><br>
<b>Segundo Apellido:</b>&nbsp;<?php print(strtoupper($r_cons['segundo_ap'])); ?><br>
<b>Nombre(s):</b>&nbsp;<?php print(strtoupper($r_cons['nombre'])); ?><br>
<b>Identificación:</b>&nbsp;<?php print(strtoupper($r_cons['identificacion'])); unset($r_cons); ?><br>
      </div>

</div>




 <hr>

  Listado de apoyos<br>
  Agregar apoyo
  agregar apoyos desde archivo (CSV)
<div class="box-body no-padding">
<table class="table table-striped">
<thead>
<tr>
  <th style="width: 10px">#</th>
  <th>Tipo</th>
  <th>Caracteristica</th>
  <th>Importe</th>
  <th>Dependencia</th>
  <th>Fecha del apoyo</th>
  <th> </th>
  <th> </th>
  <th> </th>
</tr>
  </thead>
<tbody>

<?php
$consulta = "SELECT * FROM apoyos_$letra WHERE curp = '".$_GET['curp']."'";
$consulta ="SELECT
ta.tipo_apoyo as tipo,
ca.caracteristica as caracteristica,
a.importe_apoyo as importe,
d.acronimo as dependencia,
a.fecha_apoyo as fecha
FROM apoyos_$letra a
inner join tipo_apoyo ta on(a.tipo_apoyo = ta.id_tipo_apoyo)
inner join caracteristicas_apoyo ca on(a.caracteristica_apoyo = ca.id_caracteristica)
inner join dependencias d on(a.dependencia = d.id_dependencia)
WHERE curp = '".$_GET['curp']."'";
$ex_consulta = $conexion->query($consulta);
unset($consulta);
$num_row = 1;
while($r = $ex_consulta->fetch_assoc()){
?>
  <tr>
  <td style="width: 10px"><?php echo $num_row;?></td>
  <td><?php echo $r['tipo'];?></td>
    <td><?php echo $r['caracteristica'];?></td>
  <td><?php echo $r['importe'];?></td>
  <td><?php echo $r['dependencia'];?></td>
  <td><?php echo $r['fecha'];?></td>
  <td> <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></td>
  <td> <span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
    <td> <span class="glyphicon glyphicon-remove" aria-hidden="true"></span></td>
  </tr>
  <?php
$num_row = $num_row +1;
}

$ex_consulta->free();
unset($ex_consulta);
unset($consulta);
?>
</tbody>

</table>
</div><!-- /.box-body -->







</div>



<!-- ------------------------------- Dirección ---------------------------->
<div class="tab-pane" id="direccion">
<?php


 $consulta = "SELECT
 m.municipio as municipio,
 l.nombre as localidad,
 cp.codigo_postal  as codpost,
 cp.n_asentamiento as asentamiento,
 ta.tipo_asentamiento as tipo_asentamiento,
 cp.zona as zona,
 tv.tipo as tipo_vialidad,
 b.vialidad_nombre as n_vialidad,
 b.entre_calles as entre_calles,
 b.num_ext as n_ext,
 b.num_int as n_int,
 b.descripcion as descripcion
 FROM beneficiarios_$letra b
 INNER JOIN municipios m on (b.id_municipio = m.id_municipio)
 INNER JOIN localidades l on (b.id_localidad = l.id_localidad)
 INNER JOIN codigos_postales cp on (b.id_cp = cp.id)
 INNER JOIN tipo_asentamiento ta on(cp.tipo_asentamiento = ta.id_tipo)
 INNER JOIN tipo_vialidad tv on(b.id_tipo_vialidad = tv.id_tipo)
 where curp = '".$_GET['curp']."'";


 $ex_consulta = $conexion->query($consulta);
 $r_consulta = $ex_consulta->fetch_assoc();
$ex_consulta->free();
unset($ex_consulta);
unset($consulta);
?>
<p><b>CURP:</b>&nbsp;<code><?php print(strtoupper($_GET['curp'])); ?></code></p>


       <div class="row">
            <!-- left column -->
            <div class="col-md-4">
              <!-- general form elements -->
              <div class="box box-success">
                <div class="box-header with-border">
                  <h5><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Domicilio </h5>
                </div><!-- /.box-header -->
                <!-- form start -->
                <p><b>

                <?php print(strtoupper($r_consulta['tipo_vialidad'])); ?>
                  &nbsp;<?php print(strtoupper($r_consulta['n_vialidad'])); ?>
                  &nbsp;<?php print(strtoupper($r_consulta['n_ext'])); ?>
                  &nbsp;<?php print(strtoupper($r_consulta['n_int'])); ?>


                  </b></p>


                <p><?php print(strtoupper($r_consulta['tipo_asentamiento'])); ?>&nbsp;<?php print(strtoupper($r_consulta['asentamiento'])); ?><br>
                <?php print(strtoupper($r_consulta['localidad'])); ?>,<?php print(strtoupper($r_consulta['municipio'])); ?><br>
                <?php print(strtoupper($r_consulta['codpost'])); ?></p>
                 <h6><span class="glyphicon glyphicon-info-sign text-info" aria-hidden="true"></span>Descripcion </h6>
                <b>Zona:</b>&nbsp;<?php print(strtoupper($r_consulta['zona'])); ?><br>

<b>Entre calles:</b>&nbsp;<?php print(strtoupper($r_consulta['entre_calles'])); ?><br>

<b>Descripción de la ubicación:</b>&nbsp;<?php print(strtoupper($r_consulta['descripcion'])); ?>

              </div><!-- /.box -->
         </div>

         <?
function espacios_blanco($data){

        $texto = "";

        $total = strlen($data);
       for($x = 0; $x<$total; $x++){
         $letra = substr($data,$x,1);
         if($letra == " "){
           $letra = "%20";
         }
         $texto.=$letra;

      }
     return $texto;


}

$calle = espacios_blanco($r_consulta['n_vialidad']);
$numero = espacios_blanco($r_consulta['n_ext']);
$colonia = espacios_blanco($r_consulta['asentamiento']);
$municipio = espacios_blanco($r_consulta['municipio']);



$key_google_map = "https://www.google.com/maps/embed/v1/place?q=$calle%20$numero%20$colonia%2C%20$municipio%2C%20Zacatecas%2C%20M%C3%A9xico&key=AIzaSyBwTdytr_s0VAF9RApp7TdP1xlaICbLXs4";


?>

<div class="col-md-7">
<!-- Horizontal Form -->
<div class="box box-danger">
<div class="box-header with-border">
<h3 class="box-title"><span class="glyphicon glyphicon-map-marker text-danger" aria-hidden="true"></span>Localización</h3>
</div><!-- /.box-header -->
                <!-- form start -->

<iframe width="600" height="450" frameborder="0" style="border:0"
src="<?php echo $key_google_map; ?>" allowfullscreen></iframe>


              </div>


         </div>




</div>
  </div>

<!-- ---------------------------------- Estudio Socioeconomico ------------------------------- -->
<div class="tab-pane" id="estudio">
  <?php
unset($r_consulta);
$consulta = "SELECT
b.estudio_demografico as e_demografico,
b.perfil_sociodemografico as perfil_socio,
e.estado_civil as edo_civil,
b.jefe_familia as jefe_familia,
b.tipo_trabajo as tipo_trabajo,
b.ingreso_mensual as ingreso,
b.integrantes_familia as integrantes_familia,
b.dependientes_familia as dependientes_familia,
t.vivienda as tipo_vivienda,
b.num_habitantes_vivienda as habitantes,
b.serv_luz as luz,
b.serv_agua as agua,
b.serv_drenaje as drenaje,
b.serv_gas as gas,
b.serv_internet as internet,
b.serv_telefono as telefono,
n.estudios as estudios,
s.salud as ss,
b.discapacidad as discapacidad,
b.tipo_discapacidad as tipo_discapacidad
FROM
beneficiarios_$letra b
INNER JOIN estado_civil e on (b.estado_civil = e.id_estado_civil)
INNER JOIN tipo_vivienda t on(b.tipo_vivienda =  t.id_vivienda)
INNER JOIN nivel_estudios n on(b.nivel_estudios = n.id_estudios)
INNER JOIN tipo_seguridad s on(b.seguridad_social = s.id_salud)
where curp = '".$_GET['curp']."'";



$ex_consulta = $conexion->query($consulta);
$r_consulta = $ex_consulta->fetch_assoc();
$ex_consulta->free();
unset($ex_consulta);
unset($consulta);


?>
<b>CURP:</b>&nbsp;<code><?php print(strtoupper($_GET['curp'])); ?></code><hr>
<b>Estudio Demográfico:</b>&nbsp;<?php if($r_consulta['e_demografico']){echo "SI";}else{echo "NO";}?><hr>
<b>Perfil Sociodemografico</b>&nbsp;<?php print(strtoupper($r_consulta['perfil_socio'])); ?><hr>
  <b>Estado Civil:</b>&nbsp;<?php print(strtoupper($r_consulta['edo_civil'])); ?><hr>
  <b>Jef@ de familia:</b>&nbsp;<?php
if($r_consulta['jefe_familia']){echo "SI";}else{echo "NO";} ?><hr>
   <b>Tipo de trabajo:</b>&nbsp;<?php print(strtoupper($r_consulta['tipo_trabajo'])); ?><hr>
  <b>Ingreso:</b>&nbsp;<?php print(strtoupper($r_consulta['ingreso'])); ?><hr>
  <b>Integrantes Familia:</b>&nbsp;<?php print(strtoupper($r_consulta['integrantes_familia'])); ?><hr>
  <b>dependientes:</b>&nbsp;<?php print(strtoupper($r_consulta['dependientes_familia'])); ?><hr>
  <b>tipo vivienda:</b>&nbsp;<?php print(strtoupper($r_consulta['tipo_vivienda'])); ?><hr>
  <b>habitantes vivienda:</b>&nbsp;<?php print(strtoupper($r_consulta['habitantes'])); ?><hr>
  <b>Servicios básicos:</b>&nbsp;<?php

  if($r_consulta['luz']){echo "Luz ";}
if($r_consulta['agua']){echo "Agua ";}
if($r_consulta['drenaje']){echo "Drenaje ";}
if($r_consulta['gas']){echo "Gas ";}
if($r_consulta['internet']){echo "Internet ";}
if($r_consulta['telefono']){echo "Telefono ";}



  ?><hr>
  <b>Nivel de Estudios:</b>&nbsp;<?php print(strtoupper($r_consulta['estudios'])); ?><hr>
  <b>Seguridad Social:</b>&nbsp;<?php print(strtoupper($r_consulta['ss'])); ?><hr>
  <b>Discapacidad:</b>&nbsp;<?php
if($r_consulta['discapacidad']){
print(strtoupper($r_consulta['tipo_discapacidad']));
  }
 ?><hr>

</div>




</div><!-- /.tab-content -->
</div><!-- /.nav-tabs-custom -->
</div><!-- /.col -->
</div>






</section>
</div>
