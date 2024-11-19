<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Cookie&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Oleo+Script:wght@400;700&display=swap" rel="stylesheet">
   
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="style.css">
     <title>El Jardin Del Cielo</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
  
  <nav  class="navbar fixed-top  navbar-expand-sm justify-content-center">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="index.php">
          <img src="imagenes/logo.png" alt="Logo">
        </a>

      <li class="nav-item">
        <a class="nav-link" href="productos.php">Productos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="c.php">Carrito</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="cont.php">Contacto</a>
      </li>
      <li class="nav-item">
        <?php
        session_start();
        if (!isset($_SESSION['melomania'])) {
          echo '<a href="inicio.php" class="btn btn-light">Iniciar sesión</a>';
        } else {
          echo '<p class="bienvenido">Bienvenid@, '.htmlspecialchars($_SESSION['melomania']).'</p>';?></li><?php
          echo '<a href="perfil.php" class="btn">Ver Perfil</a>';?></li><?php
          echo '<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#myModal">Cerrar sesión</button>';
        }
        ?>
      </li>
    </ul>

    <!-- The Modal -->
    <div class="modal" id="myModal">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">Finalizamiento de sesión</h4>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>
          <!-- Modal body -->
          <div class="modal-body">
            ¿Desea cerrar sesión?
          </div>
          <!-- Modal footer-->
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><a href="cerrarsesion.php" class="btn">Confirmar</a></button>
          </div>
        </div>
      </div>
    </div> 
  </nav>

     <section class="foto">
           <h1 style="padding: 20%;font-size: 70%;">Jardin del cielo <br><br>Floreria   </h1>
           </section>
    
<div class="flex-container">
  <div><img src="imagenes/ca (8).jpeg" alt=""> </div>
  <div><img src="imagenes/ca (7).jpeg" alt=""></div>
  <div><img src="imagenes/ca (6).jpeg" alt=""></div>  
</div>

<div class="separator">
    <img src="imagenes/descarga (2).jpeg" alt="Separador">
    <div class="separator-text">Flores Individuales</div>
  </div>
 
<div class="productos">
  <?php
  include("carrito.php");
 
   $cat="Harry Styles";
  if($cat=="Harry Styles"){
    $sql=$conn->query("SELECT*FROM albums WHERE artista='$cat'");
  while($datos=$sql->fetch_object()){?>
  <div class="ss">
  <div class="nombre-p"><?=htmlspecialchars($datos->nombre)?></div>
  <img src="imagenes/<?=htmlspecialchars($datos->imagen)?>" alt="" class="imagen-p">
  <div class="desc"><?=htmlspecialchars($datos->descripcion)?></div>
  <div class="precio-p">$<?=htmlspecialchars($datos->precio)?></div><br>
  <div class="tipo-p"><?=htmlspecialchars($datos->tipo)?></div><br>
  
  <a class="boton-cart" href='c.php?id=<?=htmlspecialchars($datos->id)?>'>Agregar a carrito</a>
  </div>
  <?php   
  }
} ?>

</div>
</div>

<div class="separator">
    <img src="imagenes/descarga (2).jpeg" alt="Separador">
    <div class="separator-text">Crea Tu Ramo</div>
  </div>
 
<div class="productos">
  <?php
  include("carrito.php");
 
   $cat="Taylor Swift";
  if($cat=="Taylor Swift"){
    $sql=$conn->query("SELECT*FROM albums WHERE artista='$cat'");
  while($datos=$sql->fetch_object()){?>
  <div class="ss">
  <div class="nombre-p"><?=htmlspecialchars($datos->nombre)?></div>
  <img src="imagenes/<?=htmlspecialchars($datos->imagen)?>" alt="" class="imagen-p">
  <div class="desc"><?=htmlspecialchars($datos->descripcion)?></div>
  <div class="precio-p">$<?=htmlspecialchars($datos->precio)?></div><br>
  <div class="tipo-p"><?=htmlspecialchars($datos->tipo)?></div><br>
  
  <a class="boton-cart" href='c.php?id=<?=htmlspecialchars($datos->id)?>'>Agregar a carrito</a>
  </div>
  <?php   
  }
} ?>

</div>
</div>
</body>


<footer class="pie-pagina">
  <div class="grupo-1">
    <div class="box">
      <figure>
        <a href="index.html">
          <img src="imagenes/logon.png" alt="logo footer">
        </a>
      </figure>
    </div>
    <div class="box">
      <h2>EL JARDIN DEL CIELO</h2>
      <p>Creadora: Melany Sarahi Chairez Arias</p>
      <p>4I 1058</p>
      <p>Centro de Bachillerato Tecnológico Industrial y de Servicios</p>
    </div>
    <div class="box">
      <h3>FLORES CELESTIALES</h3>
      <h3>BELLEZA ETERNA</h3>
    </div>
  </div>
  <div class="grupo-2">
    <small>&copy;2024 <b>EL JARDIN DEL CIELO</b> - Todos los Derechos Reservados</small>
  </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</html>