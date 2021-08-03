<?php 

include("assets/conexiones/con_db.php");

if (isset($_POST['register'])) {
    if (strlen($_POST['name']) >= 1 && strlen($_POST['email']) >= 1 && strlen($_POST['us']) >= 1 && strlen($_POST['codigopass']) >= 1 && strlen($_POST['tipo']) >= 1) {
	    $name = trim($_POST['name']);
	    $email = trim($_POST['email']);
		$usuario = trim($_POST['us']);
		$contra= trim($_POST['codigopass']);
		$rol = trim($_POST['tipo']);
	    $fechareg = date("d/m/y");
		$consulta = "INSERT INTO usuarios(nombre, contrasena, , rol_id) VALUES ('$usuario','$contra' , '', '$rol')";
	    $consulta = "INSERT INTO registros_usuarios(nombre, email, tipo, pass, fecha_reg) VALUES ('$name','$email','$usuario','$contra','$fechareg')";
	    $resultado = mysqli_query($conex,$consulta);
	    if ($resultado) {
	    	?> 
	    	<h3 class="ok">¡Te has inscripto correctamente!</h3>
           <?php
	    } else {
	    	?> 
	    	<h3 class="bad">¡Ups ha ocurrido un error!</h3>
           <?php
	    }
    }   else {
	    	?> 
	    	<h3 class="bad">¡Por favor complete los campos!</h3>
           <?php
    }
}

?>
<!--INSERT INTO `usuarios`(`id`, `nombre`, `contrasena`, `email`, `rol_id`, `estado`, `time_login`, `time_logout`)
 VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8])-->