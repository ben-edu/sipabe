<?php
$conectarse = new mysqli("localhost","sipubusrbd","Pib45Rhs.3ed.?fkd","padron_beneficiarios");
//funcion para obtener el id del estado
function id_estados($a){
	switch($a){
	   case "AS": //aguascalientes
	   return "01";
	   break;
	   case "BC": //baja california norte
	   return "02";
	   break;
	   case "BS": //baja california sur
	   return "03";
	   break;
	   case "CC": //Campecha
	   return "04";
	   break;
	   case "CL"://Coahuila
	   return "05";
	   break;
	   case "CM"://Colima
	   return "06";
	   break;
	   case "CS"://Chiapas
	   return "07";
	   break;
	   case "CH"://Chihuahua
	   return "08";
	   break;
	   case "DF"://Distrito Federal
	   return "09";
	   break;
	   case "DG": //Durango
	   return "10";
	   break;
	   case "GT": //Guanajuato
	   return "11";
	   break;
	   case "GR": //Guerrero
	   return "12";
	   break;
	   case "HG": //Hidalgo
	   return "13";
	   break;
	   case "JC": //Jalisco
	   return "14";
	   break;
	   case "MC"://México
	   return "15";
	   break;
	   case "MN": //Michoacan
	   return "16";
	   break;
	   case "MS": //Morelos
	   return "17";
	   break;
	   case "NT"://Nayarit
	   return "18";
	   break;
	   case "NL": //Nuevo Leon
	   return "19";
	   break;
	   case "OC": //Oaxaca
	   return "20";
	   break;
	   case "PL"://Puebla
	   return "21";
	   break;
	   case "QT": //Queretaro
	   return "22";
	   break;
	   case "QR": //Quintana Roo
	   return "23";
	   break;
	   case "SP": //San Luis Potosí
	   return "24";
	   break;
	   case "SL": //Sinaloa
	   return "25";
	   break;
	   case "SR": //Sonora
	   return "26";
	   break;
	   case "TC": //Tabasco
	   return "27";
	   break;
	   case "TS": //Tamaulipas
	   return "28";
	   break;
	   case "TL": //Tlaxcala
	   return "29";
	   break;
	   case "VZ": //Veracruz
	   return "30";
	   break;
	   case "YN": //Yucatán
	   return "31";
	   break;
	   case "ZS": //Zacatecas
	   return "32";
	   break;
	   case "NE": //Extrajero
	   return "33";
	   break;
	   default:
	   return "00";
	}

}
require_once("clases/verifica_curp.php");
//Cargamos el Archivo CSV
$fname = $_FILES['xlsfile']['name'];
$file_name =  'se ha cargado el archivo: '.$fname.'<br> ';
$chk_ext = explode(".",$fname);
if(strtolower(end($chk_ext)) == "csv") {
$extension_file = "<p>extension de archivo: <span class='glyphicon glyphicon-ok-circle text-success' aria-hidden='true'></span> correcta<br></p>";
$reg_totales = 0;
$reg_guardados = 0;
$reg_omitidos = 0;
$contador_curps_omitidos = 0;

$filename = $_FILES['xlsfile']['tmp_name'];
if (($gestor = fopen($filename, "r")) !== FALSE) {
while (($datos = fgetcsv($gestor, 1000, ",")) !== FALSE) {
$numero = count($datos);
for ($c=0; $c < $numero; $c++) {
$data[$reg_totales][$c] = $datos[$c];
}
$reg_totales++;
}
fclose($gestor);
}

for($x=0;$x<$reg_totales;$x++){
$curp = strtoupper($data[$x][0]);
//Checamos que realmente sea un curp
$curp_valido = verificar_curp($curp);
if($curp_valido){
 $letra = strtoupper(substr($curp,0,1));
  $ap_paterno=$data[$x][1];
  $ap_materno=$data[$x][2];
  $nombre=$data[$x][3];
  $identificacion=$data[$x][4];
  $municipio=$data[$x][5];
  $localidad =$data[$x][6];
  $cp =$data[$x][7];
  $tipo_vialidad =$data[$x][8];
    $n_vialidad =$data[$x][9];
          $n_ext =$data[$x][10];
          $n_int =$data[$x][11];
          $estado_civil=$data[$x][12];
          $jefe_familia=$data[$x][13];
          $discapacidad=$data[$x][14]; //checar valor de discapacidad
		      //apoyos
          $id_dependecia=$data[$x][15];
          $tipo_apoyo=$data[$x][16];
          $caracteristica_apoyo =$data[$x][17];
					$importe = $data[$x][18];
          $num_apoyos=$data[$x][19];
          $periodicidad=$data[$x][20];
          $fecha_apoyo=$data[$x][21]; //checar fecha de apoyos

      }
      else
      {

       $reg_omitidos = $reg_omitidos + 1;
       $curp_omitidos[$contador_curps_omitidos] = $curp;
       $contador_curps_omitidos = $contador_curps_omitidos + 1;

      }
        if($curp_valido){
					$consulta_registro = "SELECT count(*) FROM beneficiarios_$letra WHERE curp = '$curp'";
					$ex_registro = $conectarse->query($consulta_registro);
					$res_registro = $ex_registro->fetch_array();
          $ex_registro->free();




					if($res_registro[0] != 1){

            echo "<br>nuevo registro: $curp";

            $fecha = date("Y-m-d H:i:s");
            if($discapacidad == ""){ $discapacidad = 0; $tipo_discapacidad = ""; }else
            { $tipo_discapacidad = $discapacidad; $discapacidad = 1;  }
            $consulta_insercion = "INSERT INTO beneficiarios_$letra
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
            num_ext,
            num_int,
            estado_civil,
            jefe_familia,
						discapacidad,
            tipo_discapacidad,
            fecha_actualizacion
						)

            VALUES

            ('$curp',
            '$fecha',
            '$ap_paterno',
            '$ap_materno',
            '$nombre',
            '$identificacion',
            '$municipio',
            '$localidad',
            '$cp',
            '$tipo_vialidad',
            '$n_vialidad',
            '$n_ext',
            '$n_int',
            '$estado_civil',
            '$jefe_familia',
						'$discapacidad',
            '$tipo_discapacidad',
            '$fecha'
            )";




            $ex_registro = $conectarse->query($consulta_insercion);
            $reg_guardados = $reg_guardados + 1;

            $insertar_registro_apoyo_sql = "INSERT INTO apoyos_$letra
					(curp,dependencia,tipo_apoyo,caracteristica_apoyo,importe_apoyo,no_apoyos,periodicidad,fecha_apoyo) VALUES ('$curp','$id_dependecia','$tipo_apoyo','$caracteristica_apoyo','$importe','$num_apoyos','$periodicidad','$fecha_apoyo')";





          $conectarse->query($insertar_registro_apoyo_sql);

          }else{

            echo "<br> Se agrega un nnuevo apoyo para: $curp";

					  $consulta_actualizacion = "UPDATE beneficiarios_$letra SET fecha_actualizacion = '$fecha'";

    $insertar_registro_apoyo_sql = "INSERT INTO apoyos_$letra
					(curp,dependencia,tipo_apoyo,caracteristica_apoyo,importe_apoyo,no_apoyos,periodicidad,fecha_apoyo) VALUES ('$curp','$id_dependecia','$tipo_apoyo','$caracteristica_apoyo','$importe','$num_apoyos','$periodicidad','$fecha_apoyo')";





          $conectarse->query($insertar_registro_apoyo_sql);



          }

        }

    }



    $txt_registros = "Numero de Registros Totales: <span class='label label-info'>$reg_totales</span><br>";
    $txt_url =  "<a href='#'>Ver lista de los beneficiarios de su dependencia <span class='glyphicon glyphicon-list' aria-hidden='true'></span></a>";



unset($reg_totales);
$error = false;


}
else{ $error=true;  }
$conectarse->close();

?>

 <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Sistema Unico de Padr&oacute;n de Beneficiarios
            <small>Version preeliminar en desarrollo</small>
          </h1>
          <ol class="breadcrumb">
            <li class="active"><i class="fa fa-home"></i> Inicio</li>
          </ol>
        </section>
<!-- Main content -->
        <section class="content">
          <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- general form elements -->
              <div class="box box-success">
                <div class="box-header">
                  <h3 class="box-title">Carga de Archivos CSV</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                  <div class="box-body">

                      <?php if($error){
    ?>
                      <div class="info-box">
                <span class="info-box-icon bg-red"><i class="fa fa-times"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Error al cargar archivo</span>
                  <span class="info-box-number"><?php echo $file_name;?> y este archivo no es valido o esta corrupto.</span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->

                      <?php }else{ ?>
                      <div class="info-box">
                <span class="info-box-icon bg-green"><i class="fa fa-check-square-o"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Cargados</span>
                  <span class="info-box-number"><?php echo $reg_guardados; ?> registros</span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
                      <?php } ?>


                  </div>
              </div><!-- /.box -->

<pre>
  Registros no guardados:<?php echo $reg_omitidos;?>
  <hr>
  <?php print_r($curp_omitidos);


  ?>

</pre>



              <!-- Input addon -->


            </div><!--/.col (left) -->
            <!-- right column -->

          </div>   <!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
