<?php
$curp = $_POST['curp_txt'];
$contar = strlen($curp);
if($contar == 18){

  $res = true;
  $clase_caja = "box-success";

}
else{
  $res = false;
  $clase_caja = "box-danger";
}

?>



<div class="content-wrapper">
<section class="content-header">
<h3><span class="glyphicon glyphicon-search"></span>&nbsp;Resultado de la Búsqueda</h3>
<ol class="breadcrumb">
<li><i class="fa fa-home"></i> <a href="main.php?token=<?php echo md5(0); ?>"> Inicio</a></li>
<li class="active">Bneficiario Individual</li>
</ol>
</section>
<section class="content">
<div class="box <?php echo $clase_caja; ?>">
<div class="panel-body">

  <?php
if($res){

  $letra = strtoupper(substr($curp,0,1));
  $tabla = "beneficiarios_".$letra;
  $consulta = "SELECT
  b.primer_ap as primer_ap,
  b.segundo_ap as segundo_ap,
  b.nombre as nombre,
  m.municipio as municipio
  FROM $tabla b
  INNER JOIN municipios m on(b.id_municipio = m.id_municipio)
  WHERE b.curp = '$curp'";
  $ex_consulta = $conexion->query($consulta);
  $res = $ex_consulta->fetch_assoc();
  if(count($res)>0){
  echo "<table class='table table-hover'>
                    <tr>
                      <th>CURP</th>
                      <th>Ap Paterno</th>
                      <th>Ap Materno</th>
                      <th>Nombre</th>
                      <th>Municipio</th>
                      <th>Acciones</th>
                    </tr>
                    <tr>
                      <td>$curp</td>
                      <td>".$res['primer_ap']."</td>
                      <td>".$res['segundo_ap']."</td>
                      <td>".$res['nombre']."</td>
                      <td>".$res['municipio']."</td>
                      <td>
                      <a href='?token=".md5(12)."&curp=$curp'><i class='fa fa-edit'></i> editar</a>&nbsp;|&nbsp;
                      <a href='?token=".md5(2)."&curp=$curp'><i class='fa fa-info'></i> info</a>&nbsp;

                      </td>
                    </tr>

                  </table>";


  }else{



  echo "  <div class='callout callout-warning'>
                    <h4>No se encuentra Beneficiario</h4>
                    <p>No se encontró Beneficiario con el curp: ".$curp."</p>
                    <p><a href='#'><i class='fa fa-user'></i> Agregar</a></p>
                  </div>";
  }
}else{
    echo "<div class='color-palette-set'>
          <div class='bg-yellow disabled color-palette'><span>Curp no vàlida</span></div></div>";
}


?>


</div>
</div></section></div>
