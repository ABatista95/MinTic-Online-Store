<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Parallo - Services</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
    <link rel="stylesheet" href="CSS/all.min.css" />
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="stylesheet" href="CSS/templatemo-style.css" />

    <!-- Importacion de iconos -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    
    <!-- Importacion de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
	
	<!-- Importación de ajax -->
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
// FUNCIONES DEL CRUD
        
    //Función consultar Registro
    function consultarCliente(cedula){    	
    	var cedula = document.getElementById("Cedula").value;
    	if (cedula != ""){
    		alert("Cedula a consultar: " + cedula);    	
    		var result = $.ajax({
    		    type: "GET",
    		    url: "http://localhost:8080/consultarCliente?cedula="+cedula,
    		    success:function(data){
    		        $.each(data, function(i, item){  
   		        		document.getElementById("Nombre").value = item.nombreCliente;
   		                document.getElementById("Direccion").value = item.direccionCliente;
   		             	document.getElementById("Correo").value = item.emailCliente;
   		                document.getElementById("Contacto").value = item.telefonoCliente;
    		        })	
    		    }
    		});
    		
    	}else{
    		alert("No se registra una cedula para buscar.")
    	}   	
    }
    
    
    // función actualizar registro.
    function editarCliente(){ 	    	
   		var cedula = document.getElementById("Cedula").value;
   	  	var nombre = document.getElementById("Nombre").value;
   	  	var direccion = document.getElementById("Direccion").value;
   	  	var correo = document.getElementById("Correo").value;
   	  	var contacto = document.getElementById("Contacto").value;  
   	  	
   	  	var validar = confirm("Desea actualizar el cliente con cedula: "+cedula+" ?");
	   	if (validar == true) {
	   		var editar = $.ajax({
		   		  type:"POST",
		   		  url: "http://localhost:8080/editarCliente?cedulaCliente="+cedula+
		 				 									 "&direccionCliente="+direccion+
		 						 							 "&emailCliente="+correo+
		 						 							 "&nombreCliente="+nombre+
		 						 							 "&telefonoCliente="+contacto,
		   		  success: function(data){}
	    	  })
	   	}    	
    }
      
    // Función de agregar
    function registrarCliente(){    	  
	var cedula = document.getElementById("Cedula").value;
	var nombre = document.getElementById("Nombre").value;
	var direccion = document.getElementById("Direccion").value;
	var correo = document.getElementById("Correo").value;
	var contacto = document.getElementById("Contacto").value;  
	   	  
  	var agregar = $.ajax({
  		type:"POST",
  		url: "http://localhost:8080/registrarCliente?cedulaCliente="+cedula+
												 "&direccionCliente="+direccion+
												 "&emailCliente="+correo+
												 "&nombreCliente="+nombre+
												 "&telefonoCliente="+contacto,
		success: function(data){}    	   	
  	  })
    }
    
  	// Función Eliminar
 	function eliminarCliente(cedula){    	
 		var validar = confirm("Desea eliminar el cliente con cedula: "+cedula+" ?");
 	   	if (validar == true) {
 	   		var eliminar = $.ajax({
 	  		  type:"GET",
 	  		  url: "http://localhost:8080/eliminarCliente?cedula="+cedula,
 	  		  success: function(data){}
 	  		 })
 	  		 alert("Cliente eliminado");
 	  		 document.location.reload();
 	   	} 
 	}
    </script>
  </head>
<!--
Parallo Template
https://templatemo.com/tm-534-parallo
-->
  <body id="servicesPage">
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
              <nav
                class="navbar navbar-expand-lg navbar-light tm-bg-white-transparent tm-navbar">
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
                    <li class="nav-item green-highlight active">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="#">Clientes <span class="sr-only">(current)</span></a>
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
                  <h2 class="text-uppercase mb-2 tm-app-feature-header">GESTI&Oacute;N DE CLIENTES</h2>
              </header>
          </div>

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
		                          <div class="one-half"><label>Cedula cliente</label> <br>                      
		                          <input style= " margin:0px" type="text" id="Cedula" name="Cedula" placeholder= "Cedula cliente" size="30"></div>
		                      
		                      	  <div class="one-half"><label>Nombre Completo:</label> <br>
		                          <input style= " margin:0px" type="text" id="Nombre" name="Nombre" size="30" placeholder="Nombres y apellidos"></div>
		                          
		                          <div class="one-half"><label>Dirección:</label> <br>
		                          <input style= " margin:0px; padding 20px" type="text" id="Direccion" name="Direccion" placeholder="Dirección cliente" size="30"></div>

		                      </div>
		                      
		                      <div class="col-lg-6">
		                          <div class="one-half last"><label>E-Mail:</label> <br>
		                          <input style= " margin:0px" type="text" id="Correo" name="Correo" placeholder= "Correo cliente" size="30"></div>
		                                                                     
		                          <div class="one-half last"><label>Telefono contacto:</label> <br>
		                          <input style= " margin:0px" type="text" id="Contacto" name="Contacto" placeholder="Telefóno" size="30"></div>

		                      </div>
	                      </div>
	                      
	                      <div class="one-half last">
	                          <input type="submit" style= " margin:15px 5px" class="btn btn-primary" onclick="consultarCliente(Cedula.value)" value="CONSULTAR"/>
	                          <input type="submit" style= " margin:15px 3px" class="btn btn-success" onclick="registrarCliente()" value="CREAR"/>
	                          <input type="submit" style= " margin:15px 3px" class="btn btn-secondary" onclick="editarCliente()" value="ACTUALIZAR"/>
	                          <input type="submit" style= " margin:15px 3px" class="btn btn-danger" onclick="eliminarCliente(Cedula.value)" value="BORRAR"/>
	                      </div>
	                  
	                  </div> 
                      
                  </div>
              </div>
          </div>        
      </section>


        <!-- Services header -->
        <section class="row" id="tmServices">
           <div class="col-12 tm-tabs-container">
              <div class="tm-tab-links">
                    <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                        <li><a href="#tab1" class="active ">
                            <div class=""><i class="fas fa-2x fa-leaf"></i></div>
                            Service Tab One                        
                        </a></li>
                        <li><a href="#tab2" class="">
                            <div class="icon-wrap"><i class="fab fa-2x fa-canadian-maple-leaf"></i></div>
                            Service Tab Two             
                        </a></li>
                        <li><a href="#tab3" class="">
                            <div class="icon-wrap"><i class="fab fa-2x fa-pagelines"></i></div>
                            Service Tab Three             
                        </a></li>                    
                    </ul>
                </div>  
                <div class="tm-tab-contents">
                    <div id="first-tab-group" class="tabgroup">
                        <div id="tab1">                            
                            <div class="text-content">
                                <h3 class="tm-service-tab-title">Service Tab One</h3>
                                <p class="tm-service-tab-p">Etiam egestas metus vitae est interdum, in eleifend nunc volutpat. Aliquam molestie
                                    ipsum quis suscipit lacinia. Mauris turpis libero, iaculis non dictum ac, ornare a massa.
                                    Duis id lorem purus. Fusce viverra ullamcorper metus. Curabitur puvinar suscipit sapien
                                    ac blandit. Aliquam vel pulvinar purus, sit amet luctus urna.
                                </p>                            
                                <p class="mb-0">
                                    Nam consequat, leo vitae aliquet dignissim, leo est laoreet nibh, nec dictum libero justo
                                    vitae dolor. Donec tristique eros at nisi elementum efficitur. Proin ornare feugiat ex placerat pellenteqsue. Nulla convallis est volutpat ex ultrices facilisis.
                                </p>
                            </div>
                        </div>
                        <div id="tab2">
                            <div class="text-content">
                                <h3 class="tm-service-tab-title">Service Tab Two</h3>
                                <p class="tm-service-tab-p">Nam consequat, leo vitae aliquet dignissim, leo est laoreet nibh, nec dictum libero justo
                                    vitae dolor. Donec tristique eros at nisi elementum efficitur. Proin ornare feugiat ex placerat pellenteqsue. Nulla convallis est volutpat ex ultrices facilisis.                                
                                </p>                            
                                <p class="mb-0">
                                    Etiam egestas metus vitae est interdum, in eleifend nunc volutpat. Aliquam molestie
                                    ipsum quis suscipit lacinia. Mauris turpis libero, iaculis non dictum ac, ornare a massa.
                                    Duis id lorem purus. Fusce viverra ullamcorper metus. Curabitur puvinar suscipit sapien
                                    ac blandit. Aliquam vel pulvinar purus, sit amet luctus urna.    
                                </p>
                            </div>
                        </div>
                        <div id="tab3">
                            <div class="text-content">
                                <h3 class="tm-service-tab-title">Service Tab Three</h3>
                                <p class="tm-service-tab-p">Mauris turpis libero, iaculis non dictum ac, ornare a massa.
                                    Duis id lorem purus. Fusce viverra ullamcorper metus. Curabitur puvinar suscipit sapien
                                    ac blandit. Aliquam vel pulvinar purus, sit amet luctus urna. Nulla convallis est volutpat ex ultrices facilisis.
                                </p>                            
                                <p class="mb-0">
                                    Etiam egestas metus vitae est interdum, in eleifend nunc volutpat. Aliquam molestie
                                    ipsum quis suscipit lacinia. Nam consequat, leo vitae aliquet dignissim, leo est laoreet nibh, nec dictum libero justo
                                    vitae dolor. Donec tristique eros at nisi elementum efficitur. Proin ornare feugiat ex placerat pellenteqsue. 
                                </p>
                            </div>
                        </div>

                    </div>
                </div>

            </div>     
        </section>

      </div>
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
    <script>
        $(function(){
            $('.tabgroup > div').hide();
            $('.tabgroup > div:first-of-type').show();  
            $('.tabs a').click(function(e){
              e.preventDefault();
              var $this = $(this),
                  tabgroup = '#'+$this.parents('.tabs').data('tabgroup'),
                  others = $this.closest('li').siblings().children('a'),
                  target = $this.attr('href');
              others.removeClass('active');
              $this.addClass('active');
              $(tabgroup).children('div').hide();
              $(target).show();

              // Scroll to tab content (for mobile)
              if($(window).width() < 992) {
                  $('html, body').animate({
                      scrollTop: $("#first-tab-group").offset().top
                  }, 200);    
              }              
            })  
        });
        
    </script>
  </body>
</html>