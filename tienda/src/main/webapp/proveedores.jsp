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
	
	<!-- Importación de ajax -->
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <!-- Consulta de base de datos -->
    <script>
      var proveedores = $.ajax({
        type: "GET",
        url: "http://localhost:8080/listarProveedores",
        success: function(data){
          $.each(data, function(i, item){
            lista = document.getElementById("myTable");
            var tr = document.createElement("tr");
            var columna1 = document.createElement("td");
            columna1.innerHTML = item.nitProveedor;
            var columna2 = document.createElement("td");
            columna2.innerHTML = item.nombreProveedor;
            var columna3 = document.createElement("td");
            columna3.innerHTML = item.direccionProveedor;
            var columna4 = document.createElement("td");
            columna4.innerHTML = item.ciudadProveedor;
            var columna5 = document.createElement("td");
            columna5.innerHTML = item.telefonoProveedor;
            var columna6 = document.createElement("td");            
            columna6.innerHTML = "<a href = 'eliminarProveedor?NitProveedor="+item.nitProveedor+"' class='btn btn-danger'>Eliminar</a>";
            var columna7 = document.createElement("td");
            columna7.innerHTML = "<a href = 'proveedores.jsp?NitProveedor="+item.nitProveedor+"' class='btn btn-primary'>Editar</a>";;
            
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
      
      //Editar Proveedor.
      function editarProveedor(){
	    var nit = document.getElementById("NitProveedor").value;
	    var nombre = document.getElementById("Nombre").value;
	    var direccion = document.getElementById("Direccion").value;
	    var telefono = document.getElementById("Contacto").value;
	    var ciudad = document.getElementById("Ciudad").value;
	    
	    var editar = $.ajax({
	        type: "GET",
	        url: "http://localhost:8080/editarProveedor?nit_proveedor="+nit+
	        										  "&direccion_proveedor="+direccion+
	        										  "&ciudad_proveedor="+ciudad+
	        										  "&nombre_proveedor="+nombre+
	        										  "&telefono_proveedor="+telefono,
	        success:function(data){
	            window.location("http://localhost:8080/proveedores.jsp");
	        }
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
                      <div class="col-lg-4">
                       <form>
                       	 <div><h4 style= " margin:0px 100px">REGISTRO</h4></div>
                       	 <br/>
                         <div class="one-half"><label>Nit Proveedor</label> <br>                      
                          <input style= " margin:0px" type="text" id="NitProveedor" name="NitProveedor" placeholder= "Nit de Proveedor" size="30"></div>
                      
                      	  <div class="one-half"><label>Nombre Completo:</label> <br>
                          <input style= " margin:0px" type="text" id="Nombre" name="Nombre" size="30" placeholder="Nombres y apellidos"></div>
                          
                          <div class="one-half"><label>Direccion:</label> <br>
                          <input style= " margin:0px; padding 20px" type="text" id="Direccion" name="Direccion" placeholder="Dirección empresa" size="30"></div>
                          
                          <div class="one-half last"><label>Ciudad:</label> <br>
                          <input style= " margin:0px" type="text" id="Ciudad" name="Ciudad" placeholder= "Ciudad" size="30"></div>
                                                                     
                          <div class="one-half last"><label>Telefono contacto:</label> <br>
                          <input style= " margin:0px" type="text" id="Contacto" name="Contacto" placeholder="Contacto" size="30"></div>
                          
                          <div class="one-half last">
                          <input type="submit" style= " margin:15px 5px" class="btn btn-success" value="AGREGAR"/>
                          <input type="submit" style= " margin:15px 3px" class="btn btn-primary" value="ACTUALIZAR"/></div>  
                                            
                      </form>
                      </div>
                      
                      <div class="col-lg-8">
                        <table id ="table" class="col-lg-12">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">Nit-Proveedor</th>
                              <th scope="col">Nombre</th>
                              <th scope="col">Direccion</th>
                              <th scope="col">Ciudad</th>
                              <th scope="col">Contacto</th>
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


        <section class="row tm-testimonials-section">
            <div class="col-12 tm-carousel">              
                <div class="tm-bg-black-transparent tm-testimonial-box text-center">                    
                  <div class="tm-person-img-container">
                    <img src="img/person-1.png" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">Praesent ornare</h3>
                  <p class="tm-about-description">
                    Vestibulum semper dolor sed elit mattis placerat cursus sed ac urna. Mauris eget suscipit purus, id ullamcorper mi. Mauris eu velit semper turpis semper.
                  </p>
                </div>

                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/person-2.png" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">Maecenas Pretium</h3>
                  <p class="tm-about-description">
                      Fusce pellenteqeue nunc sed orci mattis mattis. Etiam porttitor bibendum ligula eu saggittis. Duis lacus mi, tincidunt ut massa elementum, volutpat.
                  </p>
                </div>

                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/person-3.png" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">Nulla Quis Magna</h3>
                  <p class="tm-about-description">
                    Donec id ante nulla. Quisque vestibulum dapibus neque. Nam ex massa, fringilla ac tortor a, porta quismod mi. Maecenas gravida maximus ultrices.
                  </p>
                </div>

                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/person-1.png" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">Praesent ornare</h3>
                  <p class="tm-about-description">
                    Vestibulum semper dolor sed elit placerat cursus sed ac urna. Mauris eget suscipit purus, id ullamcorper mi. Mauris eu velit semper turpis semper.
                  </p>
                </div>    
                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/person-2.png" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">Maecenas Pretium</h3>
                  <p class="tm-about-description">
                      Fusce pellenteqeue nunc sed orci mattis mattis. Etiam porttitor bibendum ligula eu saggittis. Duis lacus mi, tincidunt ut massa elementum, volutpat.
                  </p>
                </div>

                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/person-3.png" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">Nulla Quis Magna</h3>
                  <p class="tm-about-description">
                    Donec id ante nulla. Quisque vestibulum dapibus neque. Nam ex massa, fringilla ac tortor a, porta quismod mi. Maecenas gravida maximus ultrices.
                  </p>
                </div>          
          </div>
        </section>

        <!-- Call to Action -->
        <section class="row tm-testimonials-cta" id="tmCallToAction">
          <div class="col-12 tm-call-to-action-col">
            <img src="img/call-to-action-2.jpg" alt="Image" class="img-fluid tm-call-to-action-image" />
            <div class="tm-bg-white tm-call-to-action-text">
              <h2 class="tm-call-to-action-title">Vivamus sollicitudin tellus</h2>
              <p class="tm-call-to-action-description">
                Maecenas maximus tellus in dolor auctor tristique. Nam hendrerit
                posuere laoreet. Aliquam erat volutpat. Nulla eros est,
                imperdiet vel feugiat non, ullamcorper mattis nulla.
              </p>
              <form action="#" method="get" class="tm-call-to-action-form">                
                <input name="email" type="email" class="tm-email-input" id="email" placeholder="Email" />
                <button type="submit" class="btn btn-secondary">Get Updates</button>
              </form>
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