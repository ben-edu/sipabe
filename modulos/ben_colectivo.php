<?php

if(isset($_POST['rfc_txt'])){
    $rfc = $_POST['rfc_txt'];
    $letra = strtoupper(substr($rfc,0,1));
    $tabla = "colectivos_".$letra;
    $consulta = "SELECT count(*) FROM $tabla WHERE RFC = '$rfc'";
    $ex_consulta = $conexion->query($consulta);
    $r = $ex_consulta->fetch_array();
    if($r[0]==1){
       $url = "main.php?token=".md5(16)."&rfc=$rfc";

    echo "<script type='text/javascript'>
       window.location='$url';
    </script>";
    }else{
       $url = "main.php?token=".md5(17)."&rfc=$rfc";
      $_SESSION['rfc'] = $rfc;
           echo "<script type='text/javascript'>
        window.location='$url';
    </script>";
    }
}
unset($_POST);
?>
<div class="content-wrapper">
<section class="content-header">
<h3><span class="glyphicon glyphicon-user"></span>&nbsp;Registro de Beneficiarios Colectivos</h3>
<ol class="breadcrumb">
<li><i class="fa fa-home"></i> <a href="main.php?token=<?php echo md5(0); ?>"> Inicio</a></li>
<li class="active">Bneficiario Colectivo</li>
</ol>
</section>
<section class="content">
<div class="box box-danger">
<div class="panel-body">

<form  method="post" id="rfc_form" name="rfc_form" role="form" action="?token=<?php print(md5(15)); ?>">
<div class="form-group">
                      <label>Agregar beneficairios a un grupo ya registrado:</label>
                      <select class="form-control">
                        <option>-seleccione-</option>
                      <?php
$consulta_colectivos = "select * from ben_colectivos_lista";
$ex_col = $conexion->query($consulta_colectivos);
while($r_col=$ex_col->fetch_assoc()){
echo "<option value='".$r_col['c']."'>".$r_col['n']."-".$r_col['r']."</option>";
}

?>
                      </select>
                    </div>
</form>



Para poder registrar un nuevo grupo de beneficiarios colectivos primeramente ingrese el RFC del beneficario, esto para verificar que NO se encuentre registrado y continuar con el proceso de registro, en caso de estar registrado se mostrará la información del grupo para cotejamiento de la información.
<br>
<br>Ingrese el RFC:&nbsp;
<form  method="post" id="rfc_form" name="rfc_form" role="form" action="?token=<?php print(md5(15)); ?>">
<div class="form-group input-group col-lg-4 has-success">
<input type="text" class="form-control text-success" placeholder="rfc" name="rfc_txt" id="rfc_txt">
<span class="input-group-btn">
<button class="btn btn-default" type="button" onclick="validar_rfc();">
<i class="fa fa-search"></i>
</button>
</span>
</div>
</form>
</div>
</div>
</section>
</div>
<script type="text/javascript" src="js/validarCurp.js"></script>
