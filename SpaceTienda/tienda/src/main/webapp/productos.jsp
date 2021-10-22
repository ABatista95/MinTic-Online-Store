<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>PRODUCTOS | Menu</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
    <link rel="stylesheet" href="CSS/all.min.css" />
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="stylesheet" href="CSS/templatemo-style.css" />

    <!-- Importacion de iconos -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">

    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <script>
    $('#submit-file').on("click",function(e){
    	e.preventDefault();
    	$('#files').parse({
    		config: {
    			delimiter: "auto",
    			complete: displayHTMLTable,
    		},
    		before: function(file, inputElem)
    		{
    			//console.log("Parsing file...", file);
    		},
    		error: function(err, file)
    		{
    			//console.log("ERROR:", err, file);
    		},
    		complete: function()
    		{
    			//console.log("Done with all files");
    		}
    	});
    });
      </script>    
  </head>
  
  
  <body id="aboutPage">
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
                <button
                  class="navbar-toggler"
                  type="button"
                  data-toggle="collapse"
                  data-target="#navbarNav"
                  aria-controls="navbarNav"
                  aria-expanded="false"
                  aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-nav">
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="ventas.jsp">Ventas</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="clientes.jsp">Clientes</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="proveedores.jsp">Proveedores</a>
                    </li>
                    <li class="nav-item green-highlight active">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="#">Productos <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
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
                  <h2 class="text-uppercase mb-3 tm-app-feature-header">GESTI&Oacute;N DE PRODUCTOS</h2>
              </header>
          </div>
<form class="form-inline">

	<div class="form-group">

		<input type="file" id="files" class="form-control" accept=".csv" required />
	</div>

	<div class="form-group">
		<button type="submit" id="submit-file" class="btn btn-primary">CARGAR</button>
	</div>
	
</form>
          
          <div class="row">
            <div class="col-lg-12">
                <div class="tm-bg-white-transparent tm-app-feature-box"> 
                    
                    <div class="col-lg-12 text-center">
		                  <div class="row">
			                  <div class="col-lg-12">
			                  	 <h4 style= " margin:0px 100px">REGISTRO</h4>
		                       	 <br/>
			                  </div>
		                  </div>
		                  
	                      <div class="row">
		                      <div class="col-lg-6">
		                         <div class="one-half"><label>C�digo Producto:</label> <br>                      
		                          <input style= " margin:0px" type="text" id="Codigo" name="Codigo" placeholder= "C�digo" size="30"></div>
		                      
		                      	  <div class="one-half"><label>Nombre Producto:</label> <br>
		                          <input style= " margin:0px" type="text" id="Nombre" name="Nombre" size="30" placeholder="Nombre"></div>
		                          
		                          <div class="one-half"><label>Nit Proveedor:</label> <br>
		                          <input style= " margin:0px; padding 20px" type="text" id="NitProveedor" name="NitProveedor" placeholder="Nit Proveedor" size="30"></div>
		                          
		                      </div>
		                      
		                      <div class="col-lg-6">
		                          <div class="one-half last"><label>Precio de compra:</label> <br>
		                          <input style= " margin:0px" type="text" id="pCompra" name="pCompra" placeholder= "Precio" size="30"></div>
		                                                                     
		                          <div class="one-half last"><label>Iva Producto:</label> <br>
		                          <input style= " margin:0px" type="text" id="iva" name="iva" placeholder="Valor IVA" size="30"></div>
		                          
		                          <div class="one-half last"><label>Precio de venta:</label> <br>
		                          <input style= " margin:0px" type="text" id="pVenta" name="pVenta" placeholder="Precio" size="30"></div>
		                          
		                      </div>
	                      </div>
	                      
	                      <div class="one-half last">
	                          <input type="submit" style= " margin:15px 5px" class="btn btn-primary" onclick="consultarProducto(Codigo.value)" value="CONSULTAR"/>
	                          <input type="submit" style= " margin:15px 3px" class="btn btn-success" onclick="registrarProducto()" value="CREAR"/>
	                          <input type="submit" style= " margin:15px 3px" class="btn btn-secondary" onclick="editarProducto()" value="ACTUALIZAR"/>
	                          <input type="submit" style= " margin:15px 3px" class="btn btn-danger" onclick="eliminarProducto(Codigo.value)" value="BORRAR"/>
	                      </div>
	                  
	                  </div> 
                    
                </div>
            </div>
        </div>        
      </section>

        <!-- About -->
        <section class="row" id="tmAbout">
          <header class="col-12 tm-about-header">
            <h2 class="text-uppercase text-center text-dark tm-about-page-title">About this app</h2>
            <hr class="tm-about-title-hr">
          </header>
          <div class="col-lg-4">
            <div class="tm-bg-black-transparent tm-about-box">
              <div class="tm-about-number-container">0.1</div>              
              <h3 class="tm-about-name">Best Quality</h3>
              <p class="tm-about-description">
                Integer dapibus aliquam accumsan. Nam diam elit, mollis quis elit sed, hendrerit dapibus eros. Cras auctor laoreet tortor eget. BG #0F1D20
              </p>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="tm-bg-black-transparent tm-about-box">
              <div class="tm-about-number-container">0.2</div>              
              <h3 class="tm-about-name">Satisfaction</h3>
              <p class="tm-about-description">
                Parallo is a HTML landing page template based on Bootstrap v4.3.1 framework. Please tell your friends about TemplateMo.
              </p>
              <a href="#tmFeatures" class="btn btn-tertiary tm-btn-app-feature">More</a>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="tm-bg-black-transparent tm-about-box">
              <div class="tm-about-number-container">0.3</div>              
              <h3 class="tm-about-name">High Return</h3>
              <p class="tm-about-description">
                You are allowed to use this for commercial purpose or personal site.
              </p>
              <p class="tm-about-description">
             	You are NOT allowed to redistribute this template on any download site or template collection sites.
              </p>
              <a href="#tmFeatures" class="btn btn-secondary tm-btn-app-feature">Details</a>
            </div>
          </div>
        </section>

                
      <!-- .container-fluid -->
    </div>
    
    <!-- Page footer -->
    <footer class="row">
    	<div class="col-12 text-center text-white tm-bg-black-transparent p-0">
	         <p class="col-12 text-center m-1">
		         Copyright @ 2021 App Min-Tic. 
		         Desarrollo - <a href="#" class="tm-copyright-link">Inicio</a>
		         <br/>
		         <a href="http://www.tingcol.com" target="_blanck" class="tm-copyright-link">Ahmansavthor Batista</a>
		         <br/>
		         Felipe Bello
		         <br/>
		         Lorena Alzate
		         <br/>
		         Oscar Bermudez
		         <br/>
		         Jose Barrios
	       	 </p>
        </div> 
    </footer>

    <script src="js/jquery.min.js"></script>
    <script src="js/parallax.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </div>
  </body>
</html>