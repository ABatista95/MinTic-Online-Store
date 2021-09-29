<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Usuarios</title>
	
	<link href="/CSS/Usuarios.css" rel="stylesheet" type="text/css">
	<!-- COMENTARIO DE FELIPE -->
	<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		var usuarios = $.ajax({
			type: "GET",
			url: "http://localhost:8080/listarUsuarios",
			success: function(data){
				$.each(data, function(i, item){
					lista = document.getElementById("myTable");
					var tr = document.createElement("tr");
					var columna1 = document.createElement("td");
					columna1.innerHTML = item.cedulaUsuario;
					var columna2 = document.createElement("td");
					columna2.innerHTML = item.emailUsuario;
					var columna3 = document.createElement("td");
					columna3.innerHTML = item.nombreUsuario;
					var columna4 = document.createElement("td");
					columna4.innerHTML = item.password;
					var columna5 = document.createElement("td");
					columna5.innerHTML = item.usuario;
					var columna6 = document.createElement("td");
					columna6.innerHTML = "<a href = 'eliminarUsuario?cedula="+item.cedulaUsuario+"'>Eliminar</a>";
					var columna7 = document.createElement("td");
					columna7.innerHTML = "<a href = 'editar.jsp?cedula="+item.cedulaUsuario+"'>Editar</a>";;
					
					lista.appendChild(tr);
					tr.appendChild(columna1);
					tr.appendChild(columna2);
					tr.appendChild(columna3);
					tr.appendChild(columna4);
					tr.appendChild(columna5);
					tr.appendChild(columna6);
					tr.appendChild(columna7);
				});
			}
		})
	</script>
</head>
<body>
	<h1>Usuarios</h1>
	<a href = "agregarUsuario">Agregar Usuario</a>
	<table id ="tabla">
		<thead>
			<tr>
				<th>Cedula</th>
				<th>Correo</th>
				<th>Nombre</th>
				<th>Contraseña</th>
				<th>Usuario</th>
				<th>Eliminar</th>
				<th>Editar</th>
			</tr>	
		</thead>
		<tbody id = "myTable">
		
		</tbody>
	</table>
	
	<form>
	 	<div class="one-half"><label>Cédula:</label>
	    <input style= " margin:8px 80px" type="text" id="Cedula" name="Cedula"placeholder= "Numero de cédula"></div>
	
	    <div class="one-half last"><label>Usuario:</label>
	    <input style= " margin:8px 27px" type="text" id="Usuario" name="Usuario" placeholder= "Ingrese su usuario"></div>
	
	    <div class="one-half"><label>Nombre Completo:</label>
	    <input style= " margin:8px" type="text" id="Nombre" name="Nombre" size="30" placeholder="Nombres y apellidos"></div>
	
	    <div class="one-half last"><label>Contraseña:</label>
	    <input style= " margin:8px" type="text" id="Contraseña" name="Contraseña"></div>
	
	    <div class="one-half"><label>Correo electrónico:</label>
	    <input style= " margin:8px; padding 20px" type="text" id="Correo" name="Correo electrónico"size="40"></div>
	</form>
</body>
</html>