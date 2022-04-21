<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Tablero
      
      <small>Panel de Control</small>
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Tablero</li>
    
    </ol>

  </section>

  <?php

if($_SESSION["perfil"] =="Especial" || $_SESSION["perfil"] =="Vendedor" || $_SESSION["perfil"] =="Administrador"){

   echo '<div class="box box-success">

   <div class="box-header">

   <h1>Bienvenid@ ' .$_SESSION["nombre"].'</h1>

   </div>

   </div>';

}

?>  

  <!-- Main content -->
  <section class="content">

    
    <!-- /.box -->

  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->