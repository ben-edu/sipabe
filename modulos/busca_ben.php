<div class="content-wrapper">
<section class="content-header">
<h3><span class="glyphicon glyphicon-search"></span>&nbsp;Buscar Beneficiario</h3>
<ol class="breadcrumb">
<li><i class="fa fa-home"></i> <a href="main.php?token=<?php echo md5(0); ?>"> Inicio</a></li>
<li class="active">Bneficiario Individual</li>
</ol>
</section>
<section class="content">
<div class="box box-success">
<div class="panel-body">
Ingrese los datos que necesita para buscar al usuario, la busqueda por <strong>curp</strong> es más rápida.<br>
<br>Ingrese la CURP:&nbsp;
<form  method="post" id="curp_form" name="curp_form" role="form" action="?token=<?php print(md5(11)); ?>">
<div class="form-group input-group col-lg-4 has-success">
<input type="text" class="form-control text-success" placeholder="CURP" name="curp_txt" id="curp_txt">
<span class="input-group-btn">
<button class="btn btn-default" type="button" onclick="validarCurp();">
<i class="fa fa-search"></i>
</button>
</span>
</div>
</form>
<hr>
Formulario de busqueda específica.
<form class="form-horizontal" action="?token=<?php print(md5(13)); ?>" method="post">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="nombre" class="col-sm-2 control-label">Nombre</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="nombre" placeholder="nombre" name="nombre">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="primer_ap" class="col-sm-2 control-label">Primer Apellido</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="primer_ap" placeholder="primer apellido" name="primer_ap">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="segundo_ap" class="col-sm-2 control-label">Segundo Apellido</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="segundo_ap" placeholder="segundo apellido" name="segundo_ap">
                      </div>
                    </div>
                      <div class="form-group">
                      <label for="municipio" class="col-sm-2 control-label">Municipio</label>
                      <div class="col-sm-10">
                        <select class="form-control" name="municipio">
                          <option value="0">-Seleccione-</option>
                          <?php
                              $consutla_mpios = "SELECT id_municipio,municipio FROM municipios";
  $ex_cons_mpios = $conexion->query($consutla_mpios);
while($rs_mpios = $ex_cons_mpios->fetch_assoc()){
  echo "<option value='".$rs_mpios['id_municipio']."'>".$rs_mpios['municipio']."</option>";
}

                         ?>
                        </select>
                      </div>
                    </div>

                  </div><!-- /.box-body -->
                  <div class="box-footer">
                    <button type="submit" class="btn btn-success"><i class="fa fa-search"></i> Buscar</button>

                  </div><!-- /.box-footer -->
</form>


</div>
</div>
</section>
</div>
<script type="text/javascript" src="js/validarCurp.js"></script>
