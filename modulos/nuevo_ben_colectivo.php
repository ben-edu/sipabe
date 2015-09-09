<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
<h1>Nuevo Beneficiario Colectivo<br>
<small>Agregar un nuevo Beneficiario Colectivo</small>
</h1>
<ol class="breadcrumb">
<li><a href="main.php"><i class="fa fa-dashboard"></i> Inicio</a></li>
<li><a href="#">Beneficiario Colectivo</a></li>
</ol>
</section>
<!-- Main content -->
<section class="content">
<form class="form-horizontal" name="nuevo_bc_form" id="nuevo_bc_form" action="main.php?token=<?php print(md5(0)); ?>" method="post">
<div class='row'>
  <div class='col-xs-12'>
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs">
         <li class="active"><a href="#datos" data-toggle="tab">Informaci&oacute;n General</a></li>
         <li><a href="#direccion" data-toggle="tab">Direcci&oacute;n</a></li>
         <li><a href="#estudio" data-toggle="tab">Actividades y Beneficiarios</a></li>
       </ul>
       <div class="tab-content">

<!-- ------------------ datos info_colectivo----------------------------- -->
<div class="tab-pane active" id="datos" >
<div class="form-group">
<label for="inputcurp" class="control-label col-xs-2">RFC:</label>
<div class="col-xs-6">
<input type="text" class="form-control"  name="inputcurp" value = "<?php  print(strtoupper($_SESSION['rfc'])); ?>" disabled="disabled">
<input type="hidden" name="curp" id= "curp" value="<?php echo $_SESSION['rfc']; ?>">
</div>
</div>

<div class="form-group">
<label for="inputFirst" class="control-label col-xs-2">Nombre:</label>
<div class="col-xs-6">
<input type="text" class="form-control" placeholder="nombre del grupo cole" name="FirstA" id= "FirstA">
</div>
</div>

<div class="form-group">
<label for="inputSecond" class="control-label col-xs-2">Fecha de Constitución:</label>
<div class="col-xs-6">
<input type="text" class="form-control" placeholder="Segundo apellido" name="SecondA" id= "SecondA">
</div>
</div>

<div class="form-group">
<label for="inputNombre" class="control-label col-xs-2">Documento Constitución:</label>
<div class="col-xs-6">
<input type="name" class="form-control" placeholder="Nombre(s)" name="Nombre" id= "Nombre">
</div>
</div>



</div>


<!-- ------------------------------- Dirección ---------------------------->
<div class="tab-pane" id="direccion">

<div class="form-group">
<label for="inputFirst" class="control-label col-xs-2">Estado</label>
<div class="col-xs-6">
<input type="text" class="form-control" disabled="disabled" value="Zacatecas">
<input type="hidden" value="32" id="estado">
</div>
</div>

<div class='form-group'>
<label for='municipio' class='control-label col-xs-2'>Municipio</label>
<div class='col-xs-6'>
<select class='form-control' name='municipio' id='municipio' onChange="carga_localidad(this.value);">
<option value='0'>-Seleccione-</option>
<?php
$cons_mpio = "SELECT id_municipio,municipio FROM municipios WHERE id_estado = 32 ORDER by id_municipio ASC";
$ex_consulta_mpio = $conexion->query($cons_mpio);
while($r_con_mpio = $ex_consulta_mpio->fetch_assoc()){
	echo "<option value='".$r_con_mpio['id_municipio']."'>".$r_con_mpio['municipio']."</option>";
}
?>
</select>
</div>
</div>

</div>

<!------------------------------------ Actividades y Beneficiarios --------------------------------->
<div class="tab-pane" id="estudio">

<div class="form-group">
<label for="actividad" class="control-label col-xs-2">Actividad</label>
<div class="col-xs-6">
<input type="text" class="form-control" name='actividad'>
</div>
</div>

<div class='form-group'>
<label for='cobertura' class='control-label col-xs-2'>Cobertura</label>
<div class='col-xs-6'>
<select class='form-control' name='obertura'>
<option value='0'>-Seleccione-</option>
<?php
$cons_cobertura = "SELECT id_cobertura,cobertura FROM cobertura";
$ex_consulta_cobertura = $conexion->query($cons_cobertura);
while($r_con_cobertura = $ex_consulta_cobertura->fetch_assoc()){
	echo "<option value='".$r_con_cobertura['id_cobertura']."'>".$r_con_cobertura['cobertura']."</option>";
}
unset($cons_cobertura);
unset($r_con_cobertura);
$ex_consulta_cobertura->free();
unset($ex_consulta_cobertura);
?>
</select>
</div>
</div>

<section class="content-header">
    <h5><i class="fa fa-cloud-upload"></i> Cargar un listado de Beneficiarios</h5>
</section>
<section class="content">
          <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- general form elements -->
              <div class="box box-success">

                <!-- form start -->
                  <div class="box-body">

                      <form role="form" action="?token=<?php echo md5(8);?>" name="xlsform" id="xlsform" method="post"enctype="multipart/form-data">
              <div class="form-group">
                <label>Cargue su archivo</label>
                <input type="file" name="xlsfile" id="xlsfile">
                <p class="help-block"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> El archivo a cargar deberá ser de las siguientes extensiones <strong> .csv </strong></p>
              </div>
           <div class="form-group">
             <button type="button" class="btn btn-default btn-sm" onclick="enviar_form();">
               <span class="glyphicon glyphicon-save" aria-hidden="true" ></span> Guardar
             </button>
</div>
</form>
                      <p>&nbsp;</p>
                      <div class="callout callout-basic">
                    <h4>Consideraciones archivo CSV</h4>
                    <p>El archivo CSV deberá contener las siguientes columnas en el orden que aqui se especif&iacute;can:</p>
                      <ul>
                        <li><span class="text text-danger">CURP</span></li>
                        <li><span class="text text-danger">Apellido Paterno</span></li>
          <li>Apellido Materno</li>
                        <li><span class="text text-danger">Nombre</span></li>
          <li>Identificación(*)</li>
                        <li><span class="text text-danger">Municipio (*)</span></li>
                        <li><span class="text text-danger">Localidad(*)</span></li>
                        <li><span class="text text-danger">C.P.(*)</span></li>
          <li>Tipo Vialidad</li>
          <li>Vialidad Nombre</li>
          <li>Num. Ext</li>
          <li>Num. Int.</li>
          <li>Estado Civil (*)</li>
          <li>Jefe Familia (*)</li>
          <li>Discapacidad</li>
                        <li><span class="text text-danger">id dependecia (*)</span></li>
                        <li><span class="text text-danger">tipo apoyo (*)</span></li>
                        <li><span class="text text-danger">Caracteristica del apoyo(*)</span></li>
                        <li><span class="text text-danger">importe</span></li>
                        <li><span class="text text-danger">No de apoyos</span></li>
                        <li><span class="text text-danger">periodicidad del apoyo (*)</span> </li>
                        <li><span class="text text-danger">fecha apoyo</span></li>
                      </ul>
        <sub> Los elementos marcados  con (*) corresponden a un catálogo</sub><br>
                        <sub> Los elementos en <span class="text text-danger">rojo</span> son obligatorios</sub>
                        <hr>



                        <div class="row">
            <div class="col-md-6">
              <!-- Block buttons -->
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Catálogos</h3>
                </div>
                <div class="box-body">
                  <button class="btn btn-default btn-block" onclick="catalogos('documentos/PLANTILLA_CSV.xlsx')"><i class="fa fa-fw  fa-file-excel-o"></i> Plantilla de llenado</button>
                  <button class="btn btn-default btn-block" onclick="catalogos('documentos/cat_localidades.xlsx')"><i class="fa fa-fw  fa-file-excel-o"></i> Catálogo Localidades</button>
                  <button class="btn btn-default btn-block btn-flat" onclick="catalogos('documentos/cat_codigos_post.xlsx')"><i class="fa fa-fw  fa-file-excel-o"></i> Catálogo Códigos Postales</button>

                </div>
              </div>


                  </div>


                  </div>
              </div><!-- /.box -->
              </div></div>

              </section>
</div>

<!-- ----------- apoyos --------------------- -->


</div><!-- /.tab-content -->
</div><!-- /.nav-tabs-custom -->
</div><!-- /.col -->
</div>

</form>

</section><!-- /.content -->
 <!-- /.content-wrapper -->
</div><!-- ./wrapper -->
<script src="js/direccion_residencia.js"></script>


<script type="text/javascript">
  function caracteristicas_apoyos(v){
  var tipo_apoyo_v = document.getElementById('tipo_apoyo').selectedIndex;
  if (tipo_apoyo == 0) {
    alert('seleccione un tipo de apoyo');
    var car_apoyo_sel = document.getElementById('caracteristica_apoyo');
    if(car_apoyo_sel){
	   l=car_apoyo_sel.parentNode;
	   l.removeChild(car_apoyo_sel);
  	}

    return false;
  }

   var car_apoyo_sel = document.getElementById('caracteristica_apoyo');
    if(car_apoyo_sel){
	   l=car_apoyo_sel.parentNode;
	   l.removeChild(car_apoyo_sel);
  	}

  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange = function() {
    if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
      var contenido = xmlhttp.responseText;
      document.getElementById('caracterisitca_apoyo_div').innerHTML += contenido;
      document.getElementById('tipo_apoyo').selectedIndex = tipo_apoyo_v;
    }
  }

  var url = "modulos/getapoyos.php?a=" + v;
  xmlhttp.open("GET", url, true);
  xmlhttp.send();

  }
</script>
<script src="js/validar_form_cc.js"></script>

<script language="javascript">

function carga_subprogramas(v){
 var elegido = v;
 $.post("modulos/subprogramas.php", { elegido: elegido }, function(data){
            $("#subprograma").html(data);
            });
}

</script>
