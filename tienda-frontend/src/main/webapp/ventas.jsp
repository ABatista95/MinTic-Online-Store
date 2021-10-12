<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>TU TIENDA - About Page</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
    <link rel="stylesheet" href="CSS/all.min.css" />
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="stylesheet" href="CSS/templatemo-style.css" />

    <!-- Importaci�n de iconos -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    
    
</head>
<body>
	<div class="parallax-window" data-parallax="scroll" data-image-src="img/bg-01.jpg">
      <div class="container-fluid">
        <div class="row tm-brand-row">
          <div class="col-lg-4 col-11">
            <div class="tm-brand-container tm-bg-white-transparent">
              <i class="bi bi-cart3 fa-2x fa-pen tm-brand-icon"></i>
              <div class="tm-brand-texts">
                <h1 class="text-uppercase tm-brand-name">TU TIENDA</h1>
                <p class="small">Todo lo que necesitas</p>
              </div>
            </div>
          </div>
          <div class="col-lg-8 col-1">
            <div class="tm-nav">
              <nav class="navbar navbar-expand-lg navbar-light tm-bg-white-transparent tm-navbar">
                <button class="navbar-toggler" type="button"
                  data-toggle="collapse" data-target="#navbarNav"
                  aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-nav">
                    <li class="nav-item green-highlight active">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="#">Ventas <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="clientes.jsp">Clientes</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="proveedores.jsp">Proveedores</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="productos.jsp">Productos</a>
                    </li>
                    <li class="nav-item">                      
                      <a class="nav-link" href="usuarios.jsp">Usuarios</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="reportes.jsp">Reportes</a>
                    </li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>

        <!-- Lista Datos -->
        <section id="tmAppFeatures">
          <div class="row">
              <header class="col-12 text-center text-white tm-bg-black-transparent p-3 tm-app-header">
                  <h2 class="text-uppercase mb-2 tm-app-feature-header">REPORTE DE VENTAS</h2>
              </header>
          </div>


          <div class="row">
              <div class="col-lg-12">
                  <div class="tm-bg-white-transparent tm-app-feature-box"> 
                      <div class="col-lg-4">
                       <form id="Formulario" name="Formulario">
                       	 <div><h4 style= " margin:0px 100px">REGISTRO</h4></div>
                       	 <br/>
                         <div class="one-half"><label>C�dula:</label> <br>                      
                          <input style= " margin:0px" type="text" id="Cedula" name="Cedula"placeholder= "Numero de c�dula" size="30"></div>
                      
                      	  <div class="one-half"><label>Nombre Completo:</label> <br>
                          <input style= " margin:0px" type="text" id="Nombre" name="Nombre" size="30" placeholder="Nombres y apellidos"></div>
                          
                          <div class="one-half"><label>Correo electronico:</label> <br>
                          <input style= " margin:0px; padding 20px" type="text" id="Correo" name="Correo electronico" placeholder="Email" size="30"></div>
                          
                          <div class="one-half last"><label>Usuario:</label> <br>
                          <input style= " margin:0px" type="text" id="Usuario" name="Usuario" placeholder= "Usuario" size="30"></div>
                                                                     
                          <div class="one-half last"><label>Contrase�a:</label> <br>
                          <input style= " margin:0px" type="text" id="Password" name="Password" placeholder="Contrase�a" size="30"></div>
                          
                          <div class="one-half last">
                          <input type="submit" style= " margin:15px 5px" class="btn btn-success" onclick="registrarUsuario()" value="AGREGAR"/>
                          <input type="submit" style= " margin:15px 3px" class="btn btn-primary" onclick="editarUsuario()" value="ACTUALIZAR"/></div>  
                                            
                      </form>
                      </div>
                      
                      <div class="col-lg-8">
                        <table id ="table" class="col-lg-12">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">Cedula</th>
                              <th scope="col">Correo</th>
                              <th scope="col">Nombre</th>
                              <th scope="col">Contrase�a</th>
                              <th scope="col">Usuario</th>
                              <th scope="col">Eliminar</th>
                              <th scope="col">Editar</th>
                            </tr>	
                          </thead>
                          <tbody id = "myTable">
                          
                          </tbody>
                        </table>
                      </div>
                  </div>
              </div>
          </div>        
      </section>

        <!-- Features -->
        <div class="row" id="tmFeatures">
          <div class="col-lg-4">
            <div class="tm-bg-white-transparent tm-feature-box">
            <h3 class="tm-feature-name">High Performance</h3>
            
            <div class="tm-feature-icon-container">
                <i class="fas fa-3x fa-server"></i>
            </div>

            <p class="text-center">Download and use this layout for your sites. Total 5 HTML pages included.</p>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="tm-bg-white-transparent tm-feature-box">
                <h3 class="tm-feature-name">Fast Support</h3>

                <div class="tm-feature-icon-container">
                    <i class="fas fa-3x fa-headphones"></i>
                </div>
                <p class="text-center">You are allowed to use this for commercial purpose or personal site.
                </p>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="tm-bg-white-transparent tm-feature-box">
                <h3 class="tm-feature-name">App Marketing</h3>

                <div class="tm-feature-icon-container">
                    <i class="fas fa-3x fa-satellite-dish"></i>
                </div>
                <p class="text-center">You are NOT allowed to redistribute this template on any download site.
                </p>
            </div>
          </div>
        </div>
      

        <!-- Page footer -->
        <footer class="row">
          <p class="col-12 text-white text-center tm-copyright-text">
            Copyright @ 2021 App Min-Tic - TingCol. 
            Desarrollo - <a href="#" class="tm-copyright-link">Inicio</a>
            <br/>
            <a href="http://www.tingcol.com" target="_blanck" class="tm-copyright-link">Ahmansavthor Batista</a>
            <br/>
            Felipe Bello
            <br/>
            Lorena Alzate
            <br/>
            Oscar Bermudez
          </p>
        </footer>
      </div>
      
      <!-- .container-fluid -->
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/parallax.min.js"></script>
    <script src="js/bootstrap.min.js"></script> 
</body>
</html>