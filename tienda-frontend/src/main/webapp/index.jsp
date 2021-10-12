<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<!------ Hojas Estilos ---------->
	<link href="/CSS/Style.css" rel="stylesheet" type="text/css">
	<link href="/CSS/index.css" rel="stylesheet" type="text/css">
       
</head>
<body>

	<div class="wrapper fadeInDown">
	  <div id="formContent">
	    <!-- Tabs Titles -->
	
	    <!-- Title -->
	    <div class="fadeIn first">
	      <h2>Mi tiendita</h2>
	    </div>
	
	    <!-- Login Form -->
	    <form action="ventas.jsp">
	      <input type="text" id="login" class="fadeIn second" name="login" placeholder="usuario">
	      <input type="password" id="password" class="fadeIn third" name="login" placeholder="contraseña">
	      <input type="submit" class="fadeIn fourth" value="Iniciar">
	    </form>
	
	    <!-- Ver detalle del proyecto -->
	    <div id="formFooter">
	      <a class="underlineHover" href="#">Más información?</a>
	    </div>
	
	  </div>
	</div>
    
</body>
</html>
