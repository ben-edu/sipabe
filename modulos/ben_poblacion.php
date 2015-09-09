<div class="content-wrapper">
<section class="content-header">
<h1>Nueva Población Beneficiada<br>
<small>Agregar Información de la Poblaión</small>
</h1>
<ol class="breadcrumb">
<li><a href="main.php"><i class="fa fa-dashboard"></i> Inicio</a></li>
<li><a href="#">Beneficiario Colectivo</a></li>
</ol>
</section>
<section class="content">
<form class="form-horizontal" name="nuevo_bc_form" id="nuevo_bc_form" action="main.php?token=<?php print(md5(0)); ?>" method="post">
<div class='row'>
<div class='col-xs-12'>
<div class="nav-tabs-custom">
<ul class="nav nav-tabs">
<li class="active"><a href="#datos" data-toggle="tab">Informaci&oacute;n General</a></li>
<li><a href="#direccion" data-toggle="tab">Ubicaci&oacute;n de la Obra</a></li>
<li><a href="#estudio" data-toggle="tab">Apoyos</a></li>
</ul><div class="tab-content">
<div class="tab-pane active" id="datos" >

<div class="form-group">
<label for="nombre_obra" class="control-label col-xs-2">Nombre de la Obra</label>
<div class="col-xs-6">
<input type="text" class="form-control"  name="nombre_obra" id="nombre_obra" requiered>
</div>
</div>

<div class="form-group">
<label for="dependencia" class="control-label col-xs-2">Dependencia Ejecutora</label>
<div class="col-xs-6">
<select  id='dependencia' name='dependencia' class="form-control">
<option vlaue="0">-Seleccione-</option>
<?php
$consulta_deps = "SELECT * FROM dependencias";
$ex_deps = $conexion->query($consulta_deps);
while($res_deps = $ex_deps->fetch_assoc()){
  echo "<option value='".$res_deps['id_dependencia']."'>".$res_deps['nombre']."</option>";
}
?>
</select>
</div>
</div>


</div>


<!-- ------------------------------- Dirección ---------------------------->
<div class="tab-pane" id="direccion">

<div class="form-group">
<label for="estado" class="control-label col-xs-2">Estado</label>
<div class="col-xs-6">
<input type="text" class="form-control" disabled="disabled" value="Zacatecas">
<input type="hidden" value="32" id="estado" name="estado">
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

<!------------------------------------ Apoyos y obras --------------------------------->
<div class="tab-pane" id="estudio">

<div class="form-group">
<label for="programa" class="control-label col-xs-2">Programa</label>
<div class="col-xs-6">
<select  id='programa' name='programa' class="form-control" onchange="carga_subprogramas(this.value);">
<option vlaue="0">-Seleccione-</option>
<?php
$consulta_prog = "SELECT * FROM programas_poa";
$ex_prog = $conexion->query($consulta_prog);
while($res_prog = $ex_prog->fetch_assoc()){
  echo "<option value='".$res_prog['id_programa_poa']."'>".$res_prog['clave']." - ".$res_prog['descripcion']."</option>";
}
?>
</select>
</div>
</div>


<div class="form-group">
<label for="subprograma" class="control-label col-xs-2">Subprograma</label>
<div class="col-xs-6">
<select  id='subprograma' name = 'subprograma' class="form-control">
<option value="0">-Seleccione-</option>
</select>
</div>
</div>


<div class="form-group">
<label for="clave_pres" class="control-label col-xs-2">Clave Presupuestal</label>
<div class="col-xs-6">
<input type="text" class="form-control"  name="clave_pres" id="clave_pres" requiered>
</div>
</div>

<div class="form-group">
<label for="tipo_obra" class="control-label col-xs-2">Tipo de Obra</label>
<div class="col-xs-6">
<select  id='tipo_obra' name='tipo_obra' class="form-control">
<option vlaue="0">-Seleccione-</option>
<?php
$consulta_tipo = "SELECT * FROM tipo_obra";
$ex_tipo = $conexion->query($consulta_tipo);
while($res_tipo = $ex_tipo->fetch_assoc()){
  echo "<option value='".$res_tipo['id_tipo']."'>".$res_tipo['tipo']."</option>";
}
?>
</select>
</div>
</div>


<div class="form-group">
<label for="desc_obra" class="control-label col-xs-2">Descripción de la Obra</label>
<div class="col-xs-6">
<input type="text" class="form-control"  name="desc_obra" id="desc_obra" requiered>
</div>
</div>



<div class="form-group">
<label for="desc_beneficio" class="control-label col-xs-2">Descripción del Beneficio</label>
<div class="col-xs-6">
<input type="text" class="form-control"  name="desc_beneficio" id="desc_beneficio" requiered>
</div>
</div>



<div class="form-group">
<label for="ben_m" class="control-label col-xs-2">Beneficiarios Mujeres</label>
<div class="col-xs-6">
<input type="number" class="form-control"  name="ben_m" id="ben_m" requiered>
</div>
</div>



<div class="form-group">
<label for="ben_h" class="control-label col-xs-2">Beneficiarios Hombres</label>
<div class="col-xs-6">
<input type="number" class="form-control"  name="ben_h" id="ben_h" requiered>
</div>
</div>



<div class="form-group">
<label for="clave_pres" class="control-label col-xs-2">Monto de la Obra</label>
<div class="col-xs-6">
<input type="text" class="form-control"  name="clave_pres" id="clave_pres" requiered>
</div>
</div>



  <div class="form-group">
<label for="perfil_s" class="control-label col-xs-2">Origen del Recurso</label>
<div class="col-xs-6">
<select  id='programa' name='programa' class="form-control" onchange="carga_subprogramas(this.value);">
<option vlaue="0">-Seleccione-</option>
<?php
$consulta_origen = "SELECT * FROM origen_recurso";
$ex_origen = $conexion->query($consulta_origen);
while($res_origen = $ex_origen->fetch_assoc()){
  echo "<option value='".$res_origen['id_origen']."'>".$res_origen['origen']."</option>";
}
?>
</select>
</div>
</div>

  <div class="tab-pane active" id="datos" >
<div class="form-group">
<label for="clave_pres" class="control-label col-xs-2">Clave Banco de proyectos</label>
<div class="col-xs-6">
<input type="text" class="form-control"  name="clave_pres" id="clave_pres" requiered>
</div>
</div>
</div>


  <div class="form-group">
<label for="perfil_s" class="control-label col-xs-2">Origen del Recurso</label>
<div class="col-xs-6">
<select  id='programa' name='programa' class="form-control" onchange="carga_subprogramas(this.value);">
<option vlaue="0">-Seleccione-</option>
<?php
$consulta_origen = "SELECT * FROM origen_recurso";
$ex_origen = $conexion->query($consulta_origen);
while($res_origen = $ex_origen->fetch_assoc()){
  echo "<option value='".$res_origen['id_origen']."'>".$res_origen['origen']."</option>";
}
?>
</select>
</div>
</div>


  <div class="tab-pane active" id="datos" >
<div class="form-group">
<label for="clave_pres" class="control-label col-xs-2">Fecha Obra programada</label>
<div class="col-xs-6">
<input type="date" class="form-control"  name="clave_pres" id="clave_pres" requiered>
</div>
</div>
</div>

  <div class="tab-pane active" id="datos" >
<div class="form-group">
<label for="clave_pres" class="control-label col-xs-2">Fecha Obra terminada</label>
<div class="col-xs-6">
<input type="date" class="form-control"  name="clave_pres" id="clave_pres" requiered>
</div>
</div>
</div>

  <div class="tab-pane active" id="datos" >
<div class="form-group">
<label for="clave_pres" class="control-label col-xs-2">Contraloria Social</label>
<div class="col-xs-6">
<input type="text" class="form-control"  name="clave_pres" id="clave_pres" requiered>
</div>
</div>
</div>


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
