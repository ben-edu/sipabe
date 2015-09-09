 <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="imagenes/<?php echo $InfoUsuario['avatar']; ?>" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p><?php echo $InfoUsuario['nombre']; ?></p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <ul class="sidebar-menu">
              <li class="header">Administrador</li>
                    <li class="treeview">
              <a href="main.php?token=<?php echo md5(0); ?>">
                <i class="fa fa-circle-o text-success"></i>
                <span>Principal</span>
              </a>

            </li>

            <li class="header">Registro Beneficiarios</li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-user"></i>
                <span>Individuales</span> <i class="fa fa-plus-square-o"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="main.php?token=<?php echo md5(1); ?>"><i class="fa fa-male text-success"></i>con CURP</a></li>
                <li><a href="main.php?token=<?php echo md5(14); ?>"><i class="fa fa-male text-info"></i> sin CURP</a></li>
                <li><a href="main.php?token=<?php echo md5(7); ?>"><i class="fa fa-file-excel-o text-success"></i>Cargar CSV</a></li>
              </ul>
            </li>
                <li class="treeview">
              <a href="#">
                <i class="fa fa-users"></i>
                <span>Colectivos</span> <i class="fa fa-plus-square-o"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="main.php?token=<?php echo md5(15); ?>"><i class="fa fa-circle-o"></i>Registrar</a></li>
                <li><a href="../layout/fixed.html"><i class="fa fa-circle-o"></i>Cargar CSV</a></li>
              </ul>
            </li>
                 <li class="treeview">
              <a href="#">
                <i class="fa fa-globe"></i>
                <span>Poblaci&oacute;n</span> <i class="fa fa-plus-square-o"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="main.php?token=<?php echo md5(18); ?>"><i class="fa fa-circle-o"></i>Registrar</a></li>
                <li><a href="../layout/fixed.html"><i class="fa fa-circle-o"></i>Cargar CSV</a></li>
              </ul>
            </li>
              <li class="header">Consultas Beneficiarios</li>
               <li class="treeview">
              <a href="#">
                <i class="fa fa-globe"></i>
                <span>Consultas</span> <i class="fa fa-plus-square-o"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="main.php?token=<?php echo md5(10); ?>"><i class="fa fa-circle-o"></i>Info Benef.</a></li>
                <li><a href="../layout/fixed.html"><i class="fa fa-circle-o"></i>Lista Benef.</a></li>
              </ul>
            </li>


          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
