<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Parallo - Contact Page</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
    <link rel="stylesheet" href="CSS/all.min.css" />
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>    
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
    <link rel="stylesheet" href="CSS/templatemo-style.css" />

    <!-- Importación de iconos -->
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
                    <h2 class="text-uppercase tm-services-page-title tm-testimonials-page-title">Contact</h2>
                    <p class="tm-services-description mb-0 small">
                        Parallax movement background page "people" for contact page
                    </p>
                </div>
            </div>
          </div>   
        </section>

        <section class="row tm-contact-row">
            <div class="col-lg-6 tm-contact-col-left">
                <form action="#" method="POST" id="tmContactForm" class="tm-bg-black-transparent tm-contact-form">
                  <div class="form-group">
                    <input type="text" id="contact_name" name="contact_name" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Name">
                  </div>
                  <div class="form-group">
                    <input type="email" id="contact_email" name="contact_email" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Email" >
                  </div>
                  <div class="form-group">
                    <textarea rows="6" id="contact_message" name="contact_message" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Message" ></textarea>
                  </div>
                  <div class="text-right">
                    <button type="submit" class="btn btn-primary tm-btn-submit rounded-0">
                      Submit
                    </button>
                  </div>
                </form>
            </div>
            <div class="col-lg-6 tm-contact-col-right">
                <div class="tm-bg-black-transparent tm-contact-text">
                            
                    <i class="mx-auto mb-5 fas fa-3x fa-address-card tm-app-feature-icon"></i>
                    
                    <h3 class="tm-service-tab-title">Maecenas in aliquam lorem</h3>
                    <p class="tm-service-tab-p">
                        Proin rutrum massa quis erat mollis iaculis. Vestibulum
                        a risus ex. Nunc rhoncus, justo at blandit cursus, orci
                        erat molestie felis, id ullamcorper mauris felis eu eros.
                    </p>                            
                    <p class="mb-0">
                        Donec turpis augue, mollis eu erat in, posuere congue 
                        sapien.  Maecenas facilisis dui sit amet ornare aliquam.
                        Paesent malesuada mi a est pulvinar.
                    </p>
                </div>
            </div>
        </section>

        <!-- Call to Action -->
        <section class="row tm-testimonials-cta" id="tmCallToAction">
          <div class="col-12 tm-call-to-action-col">
            <img src="img/call-to-action-3.jpg" alt="Image" class="img-fluid tm-call-to-action-image" />
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