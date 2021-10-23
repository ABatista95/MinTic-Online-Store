<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>REPORTES | Tienda</title>

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
	
	<!-- Importacion de ajax -->
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script>
 
 	//Metodo para listar los usuarios.
    var usuarios = $.ajax({
        type: "GET",
        url: "http://localhost:8080/listarUsuarios",
        success: function(data){
          $.each(data, function(i, item){
            lista = document.getElementById("ListUsers");
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
              
            lista.appendChild(tr);
            tr.appendChild(columna1);
            tr.appendChild(columna2);
            tr.appendChild(columna3);
            tr.appendChild(columna4);
            tr.appendChild(columna5);
            
          });
        }
      })
      
      //Metodo para listar los clientes.
       var clientes = $.ajax({
        type: "GET",
        url: "http://localhost:8080/listarClientes",
        success: function(data){
          $.each(data, function(i, item){
            listaClientes = document.getElementById("listClients");
            var tr = document.createElement("tr");
            var clm1 = document.createElement("td");
            clm1.innerHTML = item.cedulaCliente;
            var clm2 = document.createElement("td");
            clm2.innerHTML = item.nombreCliente;
            var clm3 = document.createElement("td");
            clm3.innerHTML = item.direccionCliente;
            var clm4 = document.createElement("td");
            clm4.innerHTML = item.emailCliente;
            var clm5 = document.createElement("td");
            clm5.innerHTML = item.telefonoCliente;
              
            listaClientes.appendChild(tr);
            tr.appendChild(clm1);
            tr.appendChild(clm2);
            tr.appendChild(clm3);
            tr.appendChild(clm4);
            tr.appendChild(clm5);
          });
        }
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
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="productos.jsp">Productos</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="usuarios.jsp">Usuarios</a>
                    </li>
                    <li class="nav-item green-highlight active">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="#">Reportes <span class="sr-only">(current)</span></a>
                    </li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>

        <!-- Testimonials header -->
        <section class="row" id="tmServices">
          <div class="col-12">
            <div class="parallax-window tm-services-parallax-header tm-testimonials-parallax-header"
                 data-parallax="scroll"
                 data-z-index="101"
                 data-image-src="img/people.jpg">

                 <div class="tm-bg-black-transparent text-center tm-services-header tm-testimonials-header">
                    <h2 class="text-uppercase tm-services-page-title tm-testimonials-page-title">REPORTES GENERALES</h2>
                    <p class="tm-services-description mb-0 small">
                        Listado de reportes generales de la tienda.
                    </p>
                </div>
            </div>
          </div>             
        </section>
        
        <!-- Secci�n de Lista de usuarios -->
        <section id="tmAppFeatures listaUsuarios">
          <div class="row">
              <header class="col-12 text-center text-white tm-bg-black-transparent p-3 tm-app-header">
                  <h2 class="text-uppercase mb-2 tm-app-feature-header">LISTADO DE USUARIOS</h2>
              </header>
              
          </div>


          <div class="row">
              <div class="col-lg-12">
                  <div class="tm-bg-white-transparent tm-app-feature-box"> 
                                          
                      <div class="col-lg-12 text-centre">
                        <table id ="table" class="col-lg-12">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">C&eacute;dula</th>
                              <th scope="col">Correo</th>
                              <th scope="col">Nombre</th>
                              <th scope="col">Contrase&ntilde;a</th>
                              <th scope="col">Usuario</th>
                           
                            </tr>	
                          </thead>
                          <tbody id = "ListUsers">
                          
                          </tbody>
                        </table>
                      </div>
                  </div>
              </div>
          </div>        
      </section>
      
      <!-- Secci�n de reporte de lista de clientes -->
        <section id="tmAppFeatures listaClientes">
          <div class="row">
              <header class="col-12 text-center text-white tm-bg-black-transparent p-3 tm-app-header">
                  <h2 class="text-uppercase mb-2 tm-app-feature-header">LISTADO DE CLIENTES</h2>
              </header>
          </div>


          <div class="row">
              <div class="col-lg-12">
                  <div class="tm-bg-white-transparent tm-app-feature-box"> 
                                            
                      <div class="col-lg-12 text-centre">
                        <table id ="table" class="col-lg-12">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">C&eacute;dula</th>
                              <th scope="col">Nombre</th>
                              <th scope="col">Direccion</th>
                              <th scope="col">Correo</th>
                              <th scope="col">Telefono</th>
                              
                            </tr>	
                          </thead>
                          <tbody id = "listClients">
                          
                          </tbody>
                        </table>
                      </div>
                  </div>
              </div>
          </div>        
      </section>
      
      <!-- Secci�n de reporte de ventas por clientes -->
        <section id="tmAppFeatures ventasClientes">
          <div class="row">
              <header class="col-12 text-center text-white tm-bg-black-transparent p-3 tm-app-header">
                  <h2 class="text-uppercase mb-2 tm-app-feature-header">VENTAS POR CLIENTES</h2>
              </header>
          </div>


          <div class="row">
              <div class="col-lg-12">
                  <div class="tm-bg-white-transparent tm-app-feature-box">                       
                      
                      <div class="col-lg-12 text-centre">
                        <table id ="table" class="col-lg-12">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">C&eacute;dula Cliente</th>
                              <th scope="col">Nombre Cliente</th>
                              <th scope="col">Direccion</th>
                              <th scope="col">Correo</th>
                              <th scope="col">Telefono</th>
                                                          </tr>	
                          </thead>
                          <tbody id = "ListVentas">
                          
                          </tbody>
                        </table>
                      </div>
                  </div>
              </div>
          </div>        
      </section>
      
      <section class="row tm-testimonials-section">
            <div class="col-12 tm-carousel">   
            	<div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/person-3.png" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">FELIPE BELLO</h3>
                  <p class="tm-about-description">
                    Donec id ante nulla. Quisque vestibulum dapibus neque. Nam ex massa, fringilla ac tortor a, porta quismod mi. Maecenas gravida maximus ultrices.
                  </p>
                </div>           
                
                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/person-2.png" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">LORENA ALZATE</h3>
                  <p class="tm-about-description">
                      Fusce pellenteqeue nunc sed orci mattis mattis. Etiam porttitor bibendum ligula eu saggittis. Duis lacus mi, tincidunt ut massa elementum, volutpat.
                  </p>
                </div>

                <div class="tm-bg-black-transparent tm-testimonial-box text-center">                    
                  <div class="tm-person-img-container">
                    <img src="img/person-0.jpg" alt="Image" style="width: 180px" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">AHMANSAVTHOR BATISTA</h3>
                  <p class="tm-about-description">
                    Estudiante del proyecto MinTic 2022, enfocado en el desarrollo profesional como desarrollador.
                  </p>
                </div>

                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/person-3.png" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">JOSE BARRIOS</h3>
                  <p class="tm-about-description">
                    Vestibulum semper dolor sed elit placerat cursus sed ac urna. Mauris eget suscipit purus, id ullamcorper mi. Mauris eu velit semper turpis semper.
                  </p>
                </div>    
                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/person-3.png" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">OSCAR BERMUDEZ</h3>
                  <p class="tm-about-description">
                      Fusce pellenteqeue nunc sed orci mattis mattis. Etiam porttitor bibendum ligula eu saggittis. Duis lacus mi, tincidunt ut massa elementum, volutpat.
                  </p>
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