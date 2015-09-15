<div class="content-wrapper">
<section class="content-header">
<h1>Nuevo Beneficiario Colectivo<br>
<small>Agregar un nuevo Beneficiario Colectivo</small>
</h1>
<ol class="breadcrumb">
<li><a href="main.php"><i class="fa fa-dashboard"></i> Inicio</a></li>
<li><a href="#">Beneficiario Colectivo</a></li>
</ol>
</section>
<section class="content">
<form class="form-horizontal" name="nuevo_bc_form" id="nuevo_bc_form" action="main.php?token=<?php print(md5(19)); ?>" method="post" enctype="multipart/form-data">
<div class='row'>
<div class='col-xs-12'>
<div class="nav-tabs-custom">
<ul class="nav nav-tabs">
<li class="active"><a href="#datos" data-toggle="tab">Informaci&oacute;n General</a></li>
<li><a href="#direccion" data-toggle="tab">Direcci&oacute;n</a></li>
<li><a href="#estudio" data-toggle="tab">Actividades y Beneficiarios</a></li>
</ul><div class="tab-content">
<div class="tab-pane active" id="datos" >
<div class="form-group">
<label for="rfc" class="control-label col-xs-2">RFC:</label>
<div class="col-xs-6">
<input type="text" class="form-control"  name="rfc" value = "<?php  print(strtoupper($_SESSION['rfc'])); ?>" disabled="disabled">
<input type="hidden" name="rfc" id= "rfc" value="<?php echo $_SESSION['rfc']; ?>">
</div>
</div>
<div class="form-group">
<label for="nombre" class="control-label col-xs-2">Nombre:</label>
<div class="col-xs-6">
<input type="text" class="form-control" placeholder="Nombre del Grupo" name="nombre" id= "nombre">
</div>
</div>
<div class="form-group">
<label for="fecha_const" class="control-label col-xs-2">Fecha de Constitución:</label>
<div class="col-xs-6">
<input type="date" class="form-control" placeholder="Fecha Constitución" name="fecha_const" id= "fecha_const">
</div>
</div>
<div class="form-group">
<label for="document_const" class="control-label col-xs-2">Documento Constitución:</label>
<div class="col-xs-6">
<input type="file" class="form-control" placeholder="documento const" name="document_const" id= "document_const">
</div>
</div>
</div>
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
<div class="form-group">
<label for="perfil_s" class="control-label col-xs-2">&nbsp;</label>
<div class="col-xs-6">
<input type="submit" class="btn btn-default" value="Guardar">
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</form>
</section>
</div>
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
}}
var url = "modulos/getapoyos.php?a=" + v;
xmlhttp.open("GET", url, true);
xmlhttp.send();
}
</script>

<script language="javascript">
function carga_subprogramas(v){
var elegido = v;
$.post("modulos/subprogramas.php", { elegido: elegido }, function(data){
$("#subprograma").html(data);
});
}
</script>
