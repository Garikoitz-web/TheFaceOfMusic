<?php
session_start();
if(!isset($_SESSION['logueado']) && $_SESSION['logueado'] == FALSE) {
  header("Location: ../../login.php");
}

function datos_usuario($id,$value) {

	require "conexion.php";

	$id = $mysqli->real_escape_string($id);
	$value = $mysqli->real_escape_string($value);

	$datosZ = $mysqli->query("SELECT * FROM users WHERE id = $id");
	$rowZ = $datosZ->fetch_array();

	echo $rowZ[$value];

}

require "conexion.php";

$query = "SELECT id_inst, instrumento FROM instrumento";
	$resultado=$mysqli->query($query);


?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="../img/icons/logo.ico" type="image/x-icon" rel="shortcut icon">
    <title>The Face Of Music</title>
	<link rel="stylesheet" type="text/css" href="css/perfil_table.css">
    <link rel="stylesheet" type="text/css" href="css/guardar.css">
    <link rel="stylesheet" type="text/css" href="css/composer.css">
    <link href="http://allfont.es/allfont.css?fonts=franklin-gothic-demi-cond" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript">	</script>
    <script language="javascript" src="js/jquery-3.1.1.min.js"></script>
		
		<script language="javascript">
			$(document).ready(function(){
				$("#cbx_instrumento").change(function () {

					$('#cbx_acorde1').find('option').remove().end().append('<option value="whatever"></option>').val('whatever');
					$('#cbx_acorde2').find('option').remove().end().append('<option value="whatever"></option>').val('whatever');
					$('#cbx_acorde3').find('option').remove().end().append('<option value="whatever"></option>').val('whatever');
					$('#cbx_acorde4').find('option').remove().end().append('<option value="whatever"></option>').val('whatever');
					
					
					$("#cbx_instrumento option:selected").each(function () {
						id_inst = $(this).val();
						$.post("includes/getAfinacion.php", { id_inst: id_inst }, function(data){
							$("#cbx_afinacion").html(data);
						});            
					});
				})
			});
			
			$(document).ready(function(){
				$("#cbx_afinacion").change(function () {
					$("#cbx_afinacion option:selected").each(function () {
						id_afin = $(this).val();
						$.post("includes/getTonalidad.php", { id_afin: id_afin }, function(data){
							$("#cbx_tonalidad").html(data);
						});            
					});
				})
			});

			$(document).ready(function(){
				$("#cbx_tonalidad").change(function () {
					$("#cbx_tonalidad option:selected").each(function () {
						id_tona = $(this).val();
						$.post("includes/getAcorde.php", { id_tona: id_tona }, function(data){
							$("#cbx_acorde1").html(data);
						});            
					});
				})
			});

			$(document).ready(function(){
				$("#cbx_tonalidad").change(function () {
					$("#cbx_tonalidad option:selected").each(function () {
						id_tona = $(this).val();
						$.post("includes/getAcorde.php", { id_tona: id_tona }, function(data){
							$("#cbx_acorde2").html(data);
						});            
					});
				})
			});

            $(document).ready(function(){
				$("#cbx_tonalidad").change(function () {
					$("#cbx_tonalidad option:selected").each(function () {
						id_tona = $(this).val();
						$.post("includes/getAcorde.php", { id_tona: id_tona }, function(data){
							$("#cbx_acorde3").html(data);
						});            
					});
				})
			});

			$(document).ready(function(){
				$("#cbx_tonalidad").change(function () {
					$("#cbx_tonalidad option:selected").each(function () {
						id_tona = $(this).val();
						$.post("includes/getAcorde.php", { id_tona: id_tona }, function(data){
							$("#cbx_acorde4").html(data);
						});            
					});
				})
			});
		</script>
</head>

<body>

<div class="left">

    <ul>
        <li class="li-left">
        <img  src="../img/logo.png" alt="Descripción de la imagen" width=90% >
        </center>
        <li><input type="text" placeholder="search" class="search"/></li>
        <a href="../home.php" class="boton font1"><li>HOME</li></a> 
        <a href="../tonalidades.php" class="boton"><li>TONALIDADES</li></a>    
        <a href="../modos.php" class="boton"><li>MODOS</li></a>    
        <a href="../estructuras.php" class="boton"><li>ESTRUCTURAS</li></a>
        
        
        
        <div class="h-account">
            <a href="../perfil.php?username=<?php echo $_SESSION['username'];?>">
                <li>
                <img src="../img/icons/perfil.png" class="i-icon" width=20% class="boton">
                </li>
            </a>

            <a href="../logout.php">
                <li>
                <img src="../img/icons/close.png" class="i-icon" width=20% class="boton">
                </li>
            </a>
        </div>
        </li>
    </ul>
	
    
</div>


<div class="main">

        <li type="disc" class="tittle">CANCIONEA TU CREACION</li>
        <form id="combo" name="combo" action="guarda.php" method="POST" enctype="multipart/form-data"> 
		<div class="form-group">
		<div class="line">
			<a class="perfil-name" name="id_user" id="id_user" >
			</a>
		</div>
		</div>
        <div class="card-body">
        

<!-- TITULO DE LA CANCION -->
<div class="form-group">
    <li type="disc" class="li-tittle select2">
        <label for="song_name" class="text-uppercase text-primary">NOMBRE DE LA CANCION</label>
        <div class="label-line"></div>
        <div class="overlap-text">
          <input type="text" placeholder="Nombre de la cancion" class="input" name="song_name" id="song_name" required />
        </div>
    </li>
</div>

<!-- select para el instrumento -->

<div class="form-group">
    <li type="disc" class="li-tittle select2">
        <label for="instrumento" class="text-uppercase text-primary">INSTRUMENTO</label>
        <div class="label-line"></div>
        <select class="custom-select form-control select-text" name="cbx_instrumento" id="cbx_instrumento">
				<option value="0">-- Select --</option>
				<?php while($row = $resultado->fetch_assoc()) { ?>
					<option value="<?php echo $row['id_inst']; ?>"><?php echo $row['instrumento']; ?></option>
				<?php } ?>
			</select>
    </li>
</div>

<!-- select para la afinacion -->
<div class="form-group">
    <li type="disc" class="li-tittle select2">
        <label for="afinacion" class="text-uppercase text-primary">AFINACION</label>
        <div class="label-line"></div>
        <select class="custom-select form-control select-text" name="cbx_afinacion" id="cbx_afinacion">
            <!-- cargar con js dependiendo del instrumento -->
        </select>
    </li>
</div>

<!-- select para el tonalidad -->
<div class="form-group">
    <li type="disc" class="li-tittle select2">
        <label for="tonalidad" class="text-uppercase text-primary">TONALIDAD</label>
        <div class="label-line"></div>
        <select class="custom-select form-control select-text" name="cbx_tonalidad" id="cbx_tonalidad">
            <!-- cargar con js dependiendo de la afinacion -->
        </select>
    </li>
</div>

<!-- select para el acorde 1 -->
<div class="form-group">
    <li type="disc" class="li-tittle select2">
        <label for="acorde" class="text-uppercase text-primary">1º ACORDE</label>
        <div class="label-line"></div>
        <select class="custom-select form-control select-text" name="cbx_acorde1" id="cbx_acorde1">
            <!-- cargar con js dependiendo de la tonalidad -->
        </select>
    </li>
</div>

<!-- select para el acorde 2 -->
<div class="form-group">
    <li type="disc" class="li-tittle select2">
        <label for="acorde2" class="text-uppercase text-primary">2º ACORDE</label>
        <div class="label-line"></div>
        <select class="custom-select form-control select-text" name="cbx_acorde2" id="cbx_acorde2">
            <!-- cargar con js dependiendo de la tonalidad -->
        </select>
    </li>
</div>

<!-- select para el acorde 3 -->
<div class="form-group">
    <li type="disc" class="li-tittle select2">
        <label for="acorde3" class="text-uppercase text-primary">3º ACORDE</label>
        <div class="label-line"></div>
        <select class="custom-select form-control select-text" name="cbx_acorde3" id="cbx_acorde3">
            <!-- cargar con js dependiendo de la tonalidad -->
        </select>
    </li>
</div>

<!-- select para el acorde 4 -->
<div class="form-group">
    <li type="disc" class="li-tittle select2">
        <label for="acorde4" class="text-uppercase text-primary">4º ACORDE</label>
        <div class="label-line"></div>
        <select class="custom-select form-control select-text" name="cbx_acorde4" id="cbx_acorde4">
            <!-- cargar con js dependiendo de la tonalidad -->
        </select>
        </li>
</div>





<div style="float: left; clear: both; margin-left: 45%;">
<input type="submit" id="enviar" name="enviar" value="Guardar" />
 <?php 
?> 

</div>

</div>
</form> 

</div>

<div class="right" >
    <ul>
	<li class="li-right">
	<a href="../perfil.php" class="boton">
	<img  src="../../img/icons/profile.png" alt="Descripción de la imagen" width=50% margin-left=10% margin-right=10%>
	</a>
	<div class="hr-name perfil-name">
	<a class="perfil-name" name="id_use" href="../perfil.php?username=<?php echo $_SESSION['username'];?>"><?php echo $_SESSION['username'];?>
    </a>
	</li>
    </ul>
</div>

</body>


</html>