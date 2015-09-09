<div class="content-wrapper">
<section class="content-header">
    <h3><i class="fa fa-cloud-upload"></i> Cargar un listado de Beneficiarios</h3>
<ol class="breadcrumb">
<li><a href="main.php?token=<?php echo md5(0); ?>"><i class="fa fa-home"></i> Inicio</a></li>
    <li class="active"> Cargar un listado de Beneficiarios</li>
</ol>
</section>
<section class="content">
          <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- general form elements -->
              <div class="box box-success">
                <div class="box-header">
                  <h3 class="box-title">Subir un archivo</h3>
                </div><!-- /.box-header -->
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


<script type="text/javascript">
function enviar_form(){
  document.xlsform.submit();
}

function catalogos(n){
window.open(n,'_blank');
}
</script>
