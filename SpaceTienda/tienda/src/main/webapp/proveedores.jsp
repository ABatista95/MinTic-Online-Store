<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>PROVEEDORES | Menu</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
    <link rel="stylesheet" href="CSS/all.min.css" />
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>    
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
    <link rel="stylesheet" href="CSS/templatemo-style.css" />
    
    <!-- Importacion de iconos -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    
    <!-- Importacion de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
	
	<!-- Importaci�n de ajax -->
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <!-- Consulta de base de datos -->
    <script>
    
	 // Funci�n Eliminar
	function eliminarProveedor(nit){    	
	var validar = confirm("Desea eliminar el proveedor con nit: "+nit+" ?");
   	if (validar == true) {
   		var eliminar = $.ajax({
	  		type:"GET",
	  		url: "http://localhost:8080/eliminarProveedor?nit="+nit,
	  		success: function(data){}
  		})
  		alert("Proveedor eliminado");
  		document.location.reload();
	   	} 
	}
	 
	//Funci�n consultar registro
    function consultarProveedor(nit){    	
    	var nit = document.getElementById("NitProveedor").value;
    	alert("Funci�n consultar: "+ nit);
    	if (nit != ""){
    		alert("Nit a consultar: " + nit);    	
    		var result = $.ajax({
    		    type: "GET",
    		    url: "http://localhost:8080/consultarProveedor?nit="+nit,
    		    success:function(data){
    		        $.each(data, function(i, item){  
   		        		document.getElementById("Nombre").value = item.nombre_proveedor;
   		        		document.getElementById("Direccion").value = item.direccion_proveedor;
   		                document.getElementById("Contacto").value = item.telefono_proveedor;
   		                document.getElementById("Ciudad").value = item.ciudad_proveedor;
    		        })	
    		    }
    		});
    		
    	}else{
    		alert("No se registra un Nit para buscar.")
    	}   	
    }
      
    //Editar Proveedor.
    function editarProveedor(){
	    var nit = document.getElementById("NitProveedor").value;
	    var nombre = document.getElementById("Nombre").value;
	    var direccion = document.getElementById("Direccion").value;
	    var telefono = document.getElementById("Contacto").value;
	    var ciudad = document.getElementById("Ciudad").value;
	    
	    var editar = $.ajax({
	        type: "POST",
	        url: "http://localhost:8080/editarProveedor?nit_proveedor="+nit+
	        										  "&direccion_proveedor="+direccion+
	        										  "&ciudad_proveedor="+ciudad+
	        										  "&nombre_proveedor="+nombre+
	        										  "&telefono_proveedor="+telefono,
	        success:function(data){}
	    })
	}
    
 	// Funci�n de agregar
    function registrarProveedor(){    	  
    	var nit = document.getElementById("NitProveedor").value;
        var nombre = document.getElementById("Nombre").value;
        var direccion = document.getElementById("Direccion").value;
        var telefono = document.getElementById("Contacto").value;
        var ciudad = document.getElementById("Ciudad").value;
	   	  
   	    var agregar = $.ajax({
	   		  type:"POST",
	   		  url: "http://localhost:8080/registrarProveedor?nit_proveedor="+nit+
														  "&direccion_proveedor="+direccion+
														  "&ciudad_proveedor="+ciudad+
														  "&nombre_proveedor="+nombre+
														  "&telefono_proveedor="+telefono,
	   		  success: function(data){}    	   	
   	    })
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
                      <a class="nav-link" href="clientes.jsp">Clientes </a>
                    </li>
                    <li class="nav-item green-highlight active">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="#">Proveedores <span class="sr-only">(current)</span></a>
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
                  <h2 class="text-uppercase mb-2 tm-app-feature-header">GESTI&Oacute;N DE PROVEEDORES</h2>
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
		                          <div class="one-half"><label>Nit Proveedor</label> <br>                      
		                          <input style= " margin:0px" type="text" id="NitProveedor" name="NitProveedor" placeholder= "Nit de Proveedor" size="30"></div>
		                      
		                      	  <div class="one-half"><label>Nombre Completo:</label> <br>
		                          <input style= " margin:0px" type="text" id="Nombre" name="Nombre" size="30" placeholder="Nombres y apellidos"></div>
		                          
		                          <div class="one-half"><label>Direccion:</label> <br>
		                          <input style= " margin:0px; padding 20px" type="text" id="Direccion" name="Direccion" placeholder="Direcci�n empresa" size="30"></div>

		                      </div>
		                      
		                      <div class="col-lg-6">
		                          <div class="one-half last"><label>Ciudad:</label> <br>
		                          <input style= " margin:0px" type="text" id="Ciudad" name="Ciudad" placeholder= "Ciudad" size="30"></div>
		                                                                     
		                          <div class="one-half last"><label>Telefono contacto:</label> <br>
		                          <input style= " margin:0px" type="text" id="Contacto" name="Contacto" placeholder="Contacto" size="30"></div>

		                      </div>
	                      </div>
	                      
	                      <div class="one-half last">
	                          <input type="submit" style= " margin:15px 5px" class="btn btn-primary" onclick="consultarProveedor(NitProveedor.value)" value="CONSULTAR"/>
	                          <input type="submit" style= " margin:15px 3px" class="btn btn-success" onclick="registrarProveedor()" value="CREAR"/>
	                          <input type="submit" style= " margin:15px 3px" class="btn btn-secondary" onclick="editarProveedor()" value="ACTUALIZAR"/>
	                          <input type="submit" style= " margin:15px 3px" class="btn btn-danger" onclick="eliminarProveedor(NitProveedor.value)" value="BORRAR"/>
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
    <script src="slick/slick.min.js"></script>
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

            $('.tm-carousel').slick({
                dots: true,
                  infinite: false,
                  arrows: false,
                  speed: 300,
                  slidesToShow: 3,
                  slidesToScroll: 2,
                  responsive: [
                    {
                      breakpoint: 1024,
                      settings: {
                          arrows: false,
                        slidesToShow: 2,
                        slidesToScroll: 1,
                        infinite: true,
                        dots: true
                      }
                    },
                    {
                      breakpoint: 600,
                      settings: {
                          arrows: false,
                        slidesToShow: 1,
                        slidesToScroll: 1
                      }
                    },
                    {
                      breakpoint: 480,
                      settings: {
                          arrows: false,
                        slidesToShow: 1,
                        slidesToScroll: 1
                      }
                    }
                    // You can unslick at a given breakpoint now by adding:
                    // settings: "unslick"
                    // instead of a settings object
                  ]
            });  
        });
        
    </script>
  </body>
</html>