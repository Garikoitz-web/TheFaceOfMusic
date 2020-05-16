<?php
session_start();
if(!isset($_SESSION['logueado']) && $_SESSION['logueado'] == FALSE) {
  header("Location: ../../login.php");
}

?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="../img/icons/logo.ico" type="image/x-icon" rel="shortcut icon">
    <title>The Face Of Music</title>
	<link rel="stylesheet" type="text/css" href="css/perfil_table.css">
    <link rel="stylesheet" type="text/css" href="css/guardar.css">
    <link rel="stylesheet" type="text/css" href="css/fonts.css">
    <link href="http://allfont.es/allfont.css?fonts=franklin-gothic-demi-cond" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript">	</script>
    
</head>

<body>
<div class="left">

    <ul>
        <li class="li-left">
        <img  src="../img/logo.png" alt="Descripción de la imagen" width=90% >
        </center>
        <li><input type="text" placeholder="search" class="search"/></li>
        <a href="home.php" class="boton font1"><li>HOME</li></a> 
        <a href="tonalidades.php" class="boton"><li>TONALIDADES</li></a>    
        <a href="modos.php" class="boton"><li>MODOS</li></a>    
        <a href="estructuras.php" class="boton"><li>ESTRUCTURAS</li></a>
        <a href="index.php" class="boton"><li>COMPONER CANCION</li></a>
        
        
        
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

<div class="">
<br>
<br>
<?php
/*
function datos_usuario($id,$value) {

	require "conexion.php";

	$id_user = $mysqli->real_escape_string($id);
	$value = $mysqli->real_escape_string($value);

	$datosZ = $mysqli->query("SELECT username FROM users WHERE id = $id");
	$rowZ = $datosZ->fetch_array();

	echo $rowZ[$value];

}
 $_SESSION['id'],'name'*/
include "functions.php";

	$song_name = $_POST['song_name'];

	$id_inst = $_POST['cbx_instrumento'];
	$id_afin = $_POST['cbx_afinacion'];
	$id_tona = $_POST['cbx_tonalidad'];
	$id_acor1 = $_POST['cbx_acorde1'];
	$id_acor2 = $_POST['cbx_acorde2'];
	$id_acor3 = $_POST['cbx_acorde3'];
	$id_acor4 = $_POST['cbx_acorde4'];
	
	/* '".$_SESSION['id']."'*/
	require "conexion.php";
	$sqlt = "INSERT INTO song (song_name, id_user, id_inst, id_afin, id_tona, id_acor1, id_acor2, id_acor3, id_acor4) VALUES ('$song_name','".$_SESSION['id']."','$id_inst','$id_afin','$id_tona','$id_acor1','$id_acor2','$id_acor3','$id_acor4')";
	$resultadot = $mysqli->query($sqlt);

	/* USERNAME 
	if($resultadot){
		$sql0 = "SELECT username FROM users where id = ".$_SESSION['id']."";
		$resultado0 = $mysqli->query($sql0);
		while($row0 = $resultado0->fetch_assoc())
		{
			$html0= "<a>".$row0['username']."</a>";
		}
		echo $html0;
		} else {
			echo "Error USUARIO";
		}
	*/
?>
<div class="main-perfil">
	<?php
		/* SONG NAME */
		if($resultadot){
			$sql1 = "SELECT song_name FROM song ";
			$resultado1 = $mysqli->query($sql1);
			while($row1 = $resultado1->fetch_assoc())
		{
			
			$html1= "<option>".$row1['song_name']."</option>";
		}
		?>
			<li type="disc" class="tittle">
					<?php
						echo $html1;
					?>
			</li>
			
			<?php
		} else {
			echo "Error NOMBRE";
		}
		?>

	<li type="disc" class="sub-tittle">
		<label class="text-uppercase text-primary">
			<?php
			/* INSTRUMENTO */
			if($resultadot){
				$sql2 = "SELECT instrumento FROM instrumento WHERE id_inst = $id_inst";
				$resultado2 = $mysqli->query($sql2);
				while($row2 = $resultado2->fetch_assoc())
			{
				$html2= "<a>".$row2['instrumento']."</a>";
			}
			echo "<a> <br> INSTRUMENTO:  " . $html2 . "</a>";
			
			} else {
				echo "Error Instrumento";
			}
			?>
		</label>
	
		<label class="text-uppercase text-primary">
			<?php
			/* AFINACION */
			if($resultadot){
				$sql3 = "SELECT afinacion FROM afinacion WHERE id_afin = $id_afin";
				$resultado3 = $mysqli->query($sql3);
				while($row3 = $resultado3->fetch_assoc())
			{
				$html3= "<a>".$row3['afinacion']."</a>";
			}
			echo "<br> AFINACION:  " . $html3;
			} else {
				echo "Error Afinacion";
			}
			?>
		</label>
		
		<label class="text-uppercase text-primary">
			<?php
			/* TONALIDAD */
			if($resultadot){
				$sql4 = "SELECT tonalidad FROM tonalidad WHERE id_tona = $id_tona";
				$resultado4 = $mysqli->query($sql4);
				while($row4 = $resultado4->fetch_assoc())
			{
				$html4= "<a>".$row4['tonalidad']."</a>";
			}
			echo "<br> TONALIDAD:  " . $html4;
			} else {
				echo "Error Tonalidad";
			}
			?>
		</label>
	</li>

	<div class="line1">
    </div>
	<br>
	<br>
	<table>
		<label class="text-uppercase text-primary">
			<?php
				/* ACORDE 1*/
				if($resultadot){
					$sql1a = "SELECT acorde, escala FROM acorde WHERE id_acor = $id_acor1";
					$resultado1a = $mysqli->query($sql1a);
					while($row1a = $resultado1a->fetch_assoc())
				{
					$html1a= "<option>".$row1a['acorde']."</option>";
					$html1b= $row1a['escala'];
				}
				echo "<tr><th>" . $html1a . "</th>";
				echo "<td><img width='100%' src = ../scales/".$html1b." ></td></tr>";

				} else {
				echo "Error Acorde 1";
				}
			?>  
		</label>

		<label class="text-uppercase text-primary">
			<?php
				/* ACORDE 2 */
				if($resultadot){
					$sql2a = "SELECT acorde, escala FROM acorde WHERE id_acor = $id_acor2";
					$resultado2a = $mysqli->query($sql2a);
					while($row2a = $resultado2a->fetch_assoc())
				{
					$html2a= "<option>".$row2a['acorde']."</option>";
					$html2b= $row2a['escala'];
				}
				echo "<tr><th>" . $html2a . "</th>";
				echo "<td><img width='100%' src = ../scales/".$html2b." ></td></tr>";

				} else {
				echo "Error Acorde 2";
				}
			?>  
		</label>
		
		<label class="text-uppercase text-primary">
			<?php
				/* ACORDE 3*/
				if($resultadot){
					$sql3a = "SELECT acorde, escala FROM acorde WHERE id_acor = $id_acor3";
					$resultado3a = $mysqli->query($sql3a);
					while($row3a = $resultado3a->fetch_assoc())
				{
					$html3a= "<option>".$row3a['acorde']."</option>";
					$html3b= $row3a['escala'];
				}
				echo "<tr><th>" . $html3a . "</th>";
				echo "<td><img width='100%' src = ../scales/".$html3b." ></td></tr>";

				} else {
				echo "Error Acorde 3";
				}
			?>  
		</label>

		<label class="text-uppercase text-primary">
			<?php
				/* ACORDE 4 */
				if($resultadot){
					$sql4a = "SELECT acorde, escala FROM acorde WHERE id_acor = $id_acor4";
					$resultado4a = $mysqli->query($sql4a);
					while($row4a = $resultado4a->fetch_assoc())
				{
					$html4a= "<option>".$row4a['acorde']."</option>";
					$html4b= $row4a['escala'];
				}
				echo "<tr><th>" . $html4a . "</th>";
				echo "<td><img width='100%' src = ../scales/".$html4b." ></td></tr>";

				} else {
				echo "Error Acorde 4";
				}
			?>
		</label>

</table>
            <div class="line2">
            </div>
</div>
</div>
       
<!--- PERFIL --->
<div class="right" >
    <ul>
	<li class="li-right">
	<a href="../perfil.php" class="boton">
	<br>
	<br>
	<img  src="../../img/icons/profile.png" alt="Descripción de la imagen" width=50% margin-left=10% margin-right=10%>
	</a>
	<div class="hr-name perfil-name">
	<br>
	<a class="perfil-name" href="../perfil.php?username=<?php echo $_SESSION['username'];?>"><?php echo $_SESSION['username'];?>
    </a>
	</li>
    </ul>
</div>

</body>


</html>
<!--
