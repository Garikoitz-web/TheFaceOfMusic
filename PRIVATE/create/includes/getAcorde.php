<?php

	require ('../conexion.php');
	
	$id_tona = $_POST['id_tona'];
	
	$queryC = "SELECT id_acor, acorde FROM acorde WHERE id_tona = '$id_tona'";
	$resultadoC = $mysqli->query($queryC);
	
	$html= "<option value='0'>-- Select --</option>";
	
	while($rowC = $resultadoC->fetch_assoc())
	{
		$html.= "<option value='".$rowC['id_acor']."'>".$rowC['acorde']."</option>";
	}
	echo $html;

	
?>