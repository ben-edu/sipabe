<?php
$nombre = $_POST['nombre'];
$primer_ap = $_POST['primer_ap'];
$segundo_ap = $_POST['segundo_ap'];
$municipio = $_POST['municipio'];
if(strlen($primer_ap)<3){
  $consulta = false;
  $clase_caja = "box-danger";
}else{
$consulta = true;
$clase_caja = "box-success";
$letra = strtoupper(substr($primer_ap,0,1));
$tabla = "beneficiarios_".$letra;
if($municipio == '0'){
  $cons_ben = "select
  b.curp as curp,
  b.primer_ap as primer_ap,
  b.segundo_ap as segundo_ap,
  b.nombre as nombre,
  m.municipio as municipio
  From $tabla b
  inner join municipios m on (b.id_municipio = m.id_municipio)
  where
  b.primer_ap like '$primer_ap' and
  b.segundo_ap like '%$segundo_ap%' and
  b.nombre like '%$nombre%' ";
  }else{
  $cons_ben = "select
  b.curp as curp,
  b.primer_ap as primer_ap,
  b.segundo_ap as segundo_ap,
  b.nombre as nombre,
  m.municipio as municipio
  From $tabla b
  inner join municipios m on (b.id_municipio = m.id_municipio)
  where
  b.primer_ap like '$primer_ap' and
  b.segundo_ap like '%$segundo_ap%' and
  b.nombre like '%$nombre%' and
  m.id_municipio = '$municipio'";
  }

}
?>
<div class="content-wrapper">
<section class="content-header">
<h3><span class="glyphicon glyphicon-search"></span>&nbsp;Resultados de la Búsqueda</h3>
<ol class="breadcrumb">
<li><i class="fa fa-home"></i> <a href="main.php?token=<?php echo md5(0); ?>"> Inicio</a></li>
<li class="active">Bneficiario Individual</li>
</ol>
</section>
<section class="content">
<div class="box <?php echo $clase_caja; ?>">
<div class="panel-body">

<?php if($consulta){

  $ex_consulta = $conexion->query($cons_ben);

  ?>

  <table class='table table-hover'>
                    <tr>
                      <th>CURP</th>
                      <th>Ap Paterno</th>
                      <th>Ap Materno</th>
                      <th>Nombre</th>
                      <th>Municipio</th>
                      <th>Acciones</th>
                    </tr>
    <?php while($res = $ex_consulta->fetch_assoc()){  ?>
                    <tr>
                      <td><?php echo $res['curp'];  ?></td>
                      <td><?php echo $res['primer_ap'];  ?></td>
                      <td><?php echo $res['segundo_ap'];  ?></td>
                      <td><?php echo $res['nombre'];  ?></td>
                      <td><?php echo $res['municipio'];  ?></td>
                      <td>
                      <a href='#'><i class='fa fa-edit'></i> editar</a>&nbsp;|&nbsp;
                      <a href='#'><i class='fa fa-info'></i> info</a>&nbsp;

                      </td>
                    </tr>
    <?php } ?>
                  </table>

  <?php }else{ ?>
Error, el numero de caracteres del primer apellido no es correcto.
  <?php } ?>


</div>
</div></section></div>
