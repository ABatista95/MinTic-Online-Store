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
    
    <!-- ImportaciÃ³n de iconos -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
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
                <h1 class="text-uppercase tm-brand-name">TU TIENDA-</h1>
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
              <header class="col-12 text-center text-white tm-bg-black-transparent p-5 tm-app-header">
                  <h2 class="text-uppercase mb-3 tm-app-feature-header">LISTA DE PROVEEDORES</h2>
              </header>
          </div>

          <div class="row">
              <div class="col-lg-12">
                  <div class="tm-bg-white-transparent tm-app-feature-box">
                      <div class="tm-app-feature-description-box">
                          <a href = "agregarUsuario">Agregar Proveedor</a>
                          <table id ="tabla">
                            <thead>
                              <tr>
                                <th>NIT_Proveedor</th>
                                <th>Nombre</th>
                                <th>Telefono</th>
                                <th>Dirección</th>
                                <th>Ciudad</th>
                              </tr>	
                            </thead>
                            <tbody id = "myTable">
                            
                            </tbody>
                          </table>

                          <form>
                            <div class="one-half"><label>NIT Proveedor:</label>
                             <input style= " margin:8px 50px" type="text" id="Cedula" name="Cedula"placeholder= "Numero de NIT"></div>
                         
                             <div class="one-half last"><label>Nombre Completo:</label>
                             <input style= " margin:8px 15px" type="text" id="Usuario" name="Usuario" placeholder= "Nombre y apellidos"></div>
                         
                             <div class="one-half"><label>Télefono:</label>
                             <input style= " margin:8px 100px" type="text" id="Nombre" name="Nombre" size="30" placeholder="télefono de contacto"></div>
                         
                             <div class="one-half last"><label>Dirección:</label>
                             <input style= " margin:8px 95px" type="text" id="ContraseÃ±a" name="Contraseña" placeholder="Dirección"></div>
                         
                             <div class="one-half"><label>Ciudad:</label>
                             <input style= " margin:8px 115px; padding 20px" type="text" id="Correo" name="Correo electronico" size="40" placeholder="Ciudad"></div>
                         </form>
                      </div>
                  </div>
              </div>

              <div class="col-lg-12" >
                  <div class="tm-bg-white-transparent tm-app-feature-box">
                      <div class="tm-app-feature-description-box">
                        <a href="#tmFeatures" class="btn btn-primary">BUSCAR</a>
                        <a href="#tmFeatures" class="btn btn-primary">AGREGAR</a>
                        <a href="#tmFeatures" class="btn btn-primary">EDITAR</a>
                        <a href="#tmFeatures" class="btn btn-primary">ELIMINAR</a>
                      </div>
                  </div>
              </div>
          </div>               
      </section>

        <!-- Testimonials header -->
        <section class="row" id="tmServices">
          <div class="col-12">
            <div class="parallax-window tm-services-parallax-header tm-testimonials-parallax-header"
                 data-parallax="scroll"
                 data-z-index="101"
                 data-image-src="img/ice-mountain.jpg">

                 <div class="tm-bg-black-transparent text-center tm-services-header tm-testimonials-header">
                    <h2 class="text-uppercase tm-services-page-title tm-testimonials-page-title">Testimonials</h2>
                    <p class="tm-services-description mb-0 small">
                        Parallax movement background page ice mountain for testimonials.   
                    </p>
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

        <!-- Page footer -->
        <footer class="row">
          <p class="col-12 text-white text-center tm-copyright-text">
            Copyright @ 2021 App Min-Tic - TingCol. 
            Desarrollo - <a href="#" class="tm-copyright-link">Inicio</a>
          </p>
        </footer>
      </div>
      <!-- .container-fluid -->
    </div>

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