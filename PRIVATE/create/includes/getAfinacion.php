<?php
	
	require ('../conexion.php');
	
	$id_inst = $_POST['id_inst'];
	
	$queryA = "SELECT id_afin, afinacion FROM afinacion WHERE id_inst = '$id_inst'";
	$resultadoA = $mysqli->query($queryA);
	
	$html= "<option value='0'>-- Select --</option>";
	
	while($rowA = $resultadoA->fetch_assoc())
	{
		$html.= "<option value='".$rowA['id_afin']."'>".$rowA['afinacion']."</option>";
	}
	
	echo $html;
?>		