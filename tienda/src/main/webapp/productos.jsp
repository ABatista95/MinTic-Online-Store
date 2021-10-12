<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Parallo - About Page</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
    <link rel="stylesheet" href="CSS/all.min.css" />
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="stylesheet" href="CSS/templatemo-style.css" />

    <!-- ImportaciÃ³n de iconos -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
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
              <header class="col-12 text-center text-white tm-bg-black-transparent p-5 tm-app-header">
                  <h2 class="text-uppercase mb-3 tm-app-feature-header">LISTA DE PRODUCTOS</h2>
              </header>
          </div>

          <div class="row">
              <div class="col-lg-12">
                  <div class="tm-bg-white-transparent tm-app-feature-box">
                      <div class="tm-app-feature-description-box">
                          <p>Lista de informaciÃ³n de los CLIENTES</p>
                      </div>
                  </div>
              </div>

              <div class="row">
              <div class="col-lg-12">
                  <div class="tm-bg-white-transparent tm-app-feature-box"> 
                      <div class="col-lg-4">
                       <form id="Formulario" name="Formulario">
                       	 <div><h4 style= " margin:0px 100px">REGISTRO</h4></div>
                       	 <br/>
                         <div class="one-half"><label>Cédula:</label> <br>                      
                          <input style= " margin:0px" type="text" id="Cedula" name="Cedula"placeholder= "Numero de cédula" size="30"></div>
                      
                      	  <div class="one-half"><label>Nombre Completo:</label> <br>
                          <input style= " margin:0px" type="text" id="Nombre" name="Nombre" size="30" placeholder="Nombres y apellidos"></div>
                          
                          <div class="one-half"><label>Correo electronico:</label> <br>
                          <input style= " margin:0px; padding 20px" type="text" id="Correo" name="Correo electronico" placeholder="Email" size="30"></div>
                          
                          <div class="one-half last"><label>Usuario:</label> <br>
                          <input style= " margin:0px" type="text" id="Usuario" name="Usuario" placeholder= "Usuario" size="30"></div>
                                                                     
                          <div class="one-half last"><label>Contraseña:</label> <br>
                          <input style= " margin:0px" type="text" id="Password" name="Password" placeholder="Contraseña" size="30"></div>
                          
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
                              <th scope="col">Contraseña</th>
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

        <!-- App Features -->
        <section id="tmAppFeatures">
            <div class="row">
                <header class="col-12 text-center text-white tm-bg-black-transparent p-5 tm-app-header">
                    <h2 class="text-uppercase mb-3 tm-app-feature-header">App Features</h2>
                    <p class="mb-0 small">Suspendisse finibus tellus eget sem lacinia, vel lacinia libero consequat. Sed imperdiet placerat vehicula.</p>
                </header>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <div class="tm-bg-white-transparent tm-app-feature-box">
                        <div class="tm-app-feature-icon-container">
                            <i class="fas fa-3x fa-air-freshener tm-app-feature-icon"></i>
                        </div>
                        <div class="tm-app-feature-description-box">
                            <h3 class="mb-4 tm-app-feature-title">Phasellus est lorem</h3>
                            <p class="tm-app-feature-description">Suspendisse finibus tellus eget sem lacinia, vel lacinia libero consequat. Sed imperdiet placerat vehicula. Etiam eu egestas nibh. In turpis ligula.</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="tm-bg-white-transparent tm-app-feature-box">
                        <div class="tm-app-feature-icon-container">
                            <i class="fas fa-3x fa-binoculars tm-app-feature-icon"></i>
                        </div>
                        <div class="tm-app-feature-description-box">
                            <h3 class="mb-4 tm-app-feature-title">Proin scelerisque</h3>
                            <p class="tm-app-feature-description">Etiam fermentum nisi lorem, vel pharetra ipsum egestas non. Proin odio ipsum, vestibulum quis elit quis, vulputate venenatis neque. Nam dignissim libero.</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="tm-bg-white-transparent tm-app-feature-box">
                        <div class="tm-app-feature-icon-container">
                            <i class="fas fa-3x fa-campground tm-app-feature-icon"></i>
                        </div>
                        <div class="tm-app-feature-description-box">
                            <h3 class="mb-4 tm-app-feature-title">Integer tempor</h3>
                            <p class="tm-app-feature-description">Aliquam erat volutpat. Phasellus a odio eget enim luctus vestibulum nec sed tellus. Pellentesque aliquam sem quis lobortis laoreet. Donec egestas.</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="tm-bg-white-transparent tm-app-feature-box">
                        <div class="tm-app-feature-icon-container">
                            <i class="fas fa-3x fa-fire tm-app-feature-icon"></i>
                        </div>
                        <div class="tm-app-feature-description-box">
                            <h3 class="mb-4 tm-app-feature-title">Curabitur dignissim</h3>
                            <p class="tm-app-feature-description">Donec ut odio nec nisl feugiat dictum. Quisque sit amet mattis dolor. Morbi et erat vestibulum, finibus nunc quis, fermentum eros. Cras laoreet eros.</p>
                        </div>
                    </div>
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
  </body>
</html>
