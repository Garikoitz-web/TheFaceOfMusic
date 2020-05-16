<?php

	require ('../conexion.php');
	
	$id_afin = $_POST['id_afin'];
	
	$queryT = "SELECT id_tona, tonalidad FROM tonalidad WHERE id_afin = '$id_afin'";
	$resultadoT = $mysqli->query($queryT);
	
	$html= "<option value='0'>-- Select --</option>";
	
	while($rowT = $resultadoT->fetch_assoc())
	{
		$html.= "<option value='".$rowT['id_tona']."'>".$rowT['tonalidad']."</option>";
	}
	echo $html;
?>