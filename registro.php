<?php
ob_start();
?>
<?php
session_start();
if(isset($_SESSION['logueado']) && $_SESSION['logueado'] == TRUE) {
  header("Location: home.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="img/icons/logo.ico" type="image/x-icon" rel="shortcut icon">
    <title>The Face OF Music</title>
    <link rel="stylesheet" type="text/css" href="css/index_style.css">
</head>
 
<body>
<?php 
include "loop.php";  
?>
<div id="wrapper">

  <?php
  if(isset($_POST['registro'])) {

    require("conexion.php");

    $email = $mysqli->real_escape_string($_POST['mail']);
    $nombre = $mysqli->real_escape_string($_POST['nombre']);
    $usuario = $mysqli->real_escape_string($_POST['usuario']);
    $password = md5($_POST['password']);
    $ip = $_SERVER['REMOTE_ADDR'];

    $consultausuario = "SELECT username FROM users WHERE username = '$usuario'";
    $consultaemail = "SELECT email FROM users WHERE email = '$email'";

    if($resultadousuario = $mysqli->query($consultausuario));
    $numerousuario = $resultadousuario->num_rows;

    if($resultadoemail = $mysqli->query($consultaemail));
    $numeroemail = $resultadoemail->num_rows;

    if($numeroemail>0) {
      echo "Este correo ya esta registrado, intenta con otro";
    }

    elseif($numerousuario>0) {
      echo "Este usuario ya existe";
    }

    else {

      $aleatorio = uniqid();

      $query = "INSERT INTO users (email,name,username,password,signup_date,last_ip,code) VALUES ('$email','$nombre','$usuario','$password',now(),'$ip','$aleatorio')";

      if($registro = $mysqli->query($query)) {

        Header("Refresh: 2; URL=login.php");
        ?>
        <div class="alert">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
        <strong><?php
        echo "Felicidades $usuario se ha registrado correctamente, te hemos enviado un correo de confirmacion.";
        ?>
        </strong>
        </div>
      <?php

        // Debes editar las próximas dos líneas de código de acuerdo con tus preferencias
        $email_to = $email;
        $email_subject = "Confirma tu email COMF";
        $email_from = "reply.comf.com";

        $email_message = "Hola " . $usuario . ", para poder disfrutar de nuestro sitio web, debes confirmar tu email\n\n";
        $email_message .= "Ingresa el siguiente codigo para confirmar tu email\n\n";
        $email_message .= "Codigo: " . $aleatorio . "\n";


        // Ahora se envía el e-mail usando la función mail() de PHP
        $headers = 'From: '.$email_from."\r\n".
        'Reply-To: '.$email_from."\r\n" .
        'X-Mailer: PHP/' . phpversion();
        @mail($email_to, $email_subject, $email_message, $headers);


      }

      else {

        echo "Ha ocurrido un error en el registro, intentelo de nuevo";
        header("Refresh: 2; URL=registro.php");

      }


    }

    $mysqli->close();

  }
  ?>
   <center>
   
  <div class="login-box">
  
    <form action="" method="post">
    
      <div class="l-part">

    <img src="img/cuenta.png" alt="Descripción de la imagen" width=100% >

        <input type="email" placeholder="E-mail" class="input" name="mail" required />
        <div class="overlap-text">
          <input type="text" placeholder="Name" class="input" name="nombre" required />
        </div>
        <div class="overlap-text">
          <input type="text" placeholder="UserName" class="input" name="usuario" required />
        </div>
        <div class="overlap-text">
          <input type="password" placeholder="Password" class="input" name="password" required />
        </div>
        <br>
        <input type="submit" value="Sign Up" class="btn" name="registro" />
      </div>
    </form>
    <br>
    <div class="s-part">
      <a href="login.php">Enter</a>
    </div>
  </div>
  
  
    
    </center>

</div>

</body>
</html>
<?php
ob_end_flush();
?>