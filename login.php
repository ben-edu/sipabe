<?php $index=true; require_once( 'config.php');?>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <title> - SIPABE -</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
  <link href="css/blue.css" rel="stylesheet" type="text/css" />
</head>

<body class="login-page">
  <div class="login-box">
    <div class="login-logo">
      <img src="imagenes/zacatecas-01.png" width="200" />
    </div>
    <div class="login-box-body">
      <p class="login-box-msg">Ingresa tus datos para iniciar sesi&oacute;n</p>
      <form action="validar.php" method="post">
        <div class="form-group has-feedback">
          <input type="text" class="form-control" placeholder="Usuario" name="user" required/>
          <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="password" class="form-control" placeholder="Clave" name="clave" required/>
          <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="row">
          <div class="col-xs-8">
          </div>
          <div class="col-xs-4">
            <button type="submit" class="btn btn-success btn-block btn-flat">Ingresar</button>
          </div>
        </div>
      </form>
      <a href="#">Olvid&eacute; mi clave</a>
      <br>
    </div>
    <p>&nbsp;</p>
    <?php if(isset($_GET[ 'mensaje'])){ switch($_GET[ 'mensaje']){ case '1': echo "
<div class='callout callout-danger'>
<h4><i class='fa fa-fw fa-ban'></i> Error de Ingreso!</h4>
<p>Tu nombre de usuario o contraseña son incorrectos.</p>
</div>"; break; case '2': echo "
<div class='callout callout-warning'>
<h4><i class='fa fa-fw fa-exclamation-triangle'></i> Usuario Bloqueado</h4>
<p>Tu usuario actualmente esta deshabilitado.</p>
</div>"; break; case '3': echo "
<div class='callout callout-success'>
<h4><i class='fa fa-fw fa-check-square-o'></i> Fin de la sesión</h4>
<p>Se ha cerrado correctamente la sesi&oacute;n, por favor cierra el navegador.</p>
</div>"; break; case '4': echo "
<div class='callout callout-info'>
<h4><i class='fa fa-fw fa-gears'></i>  Atenci&oacute;n</h4>
<p>El sistema esta en mantenimiento, algunas funciones no estan disponibles o estan deshabilitadas.</p>
</div>"; break; } } ?>
  </div>
  <script src="js/jQuery-2.1.3.min.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>

</html>
