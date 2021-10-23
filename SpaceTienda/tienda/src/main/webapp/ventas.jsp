<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>TU TIENDA - VENTAS</title>

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
    <script type="text/javascript">
    var Ventas = $.ajax({
        type: "GET",
        url: "http://localhost:8080/listarVentas",
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
					    <h2 class="text-uppercase mb-2 tm-app-feature-header">GESTI&Oacute;N DE VENTAS</h2>
					</header>
          		</div>
	          
 			<div class="row">
 				<div class="col-lg-12">
					
						<form class="in-line">
						  	<section>
						  		<div class="tm-bg-white-transparent tm-app-feature-box">
								  	<fieldset>            
									  	<legend>Datos del cliente</legend>                    
									  	<label for="Cedula">C&eacute;dula:</label>
									  	<input type="text" id="Cedula" placeholder="N&uacute;mero de C&eacute;dula" name="Cedula">
									  	<button type="button" style= "margin:5px 5px" class="btn btn-secondary">CONSULTAR</button>
									  	<label for="Cliente">Cliente:</label>
									  	<input type="text" id="Cliente" style="width: 250px" placeholder="Nombre del cliente" name="Nombre">
									  	<label for="Consecutivo">Consecutivo:</label>
									  	<input type="text" id="Consecutivo" placeholder="Consecutivo" name="Consecutivo" disabled>
								  	</fieldset>
								</div>
						  	</section>
				  
							<section>
							  	<div class="tm-bg-white-transparent tm-app-feature-box">
							  		<div class="container">
							  			<div class="row">
							  				<div class="col-12">
							  					<form class="in-line">
							  						<legend>Datos de la venta</legend>
													<table>
														<tr>
															<td> 
																<fieldset>C&oacute;digo Producto 
																	<div class="col"><label for="Codigo"></label></div>
																	<input type="text" style="width: 150px" id="Codigo1" name="Codigo">
																	<button type="button" style="margin:5px 5px" class="btn btn-secondary ">CONSULTAR</button>
									  							</fieldset>
									 						</td>
															<td> 
																<fieldset>Nombre Producto
																  	<div class="col"><label for="Nombre"></label></div>
																  	<input type="text" style="width: 300px; margin-right: 30px" id="Nombre1" name="Nombre1" disabled> 
																</fieldset>
															</td>
															<td> 
																<fieldset>Cant.
																  <div class="col"><label for="Cant"></label></div>
																  <input type="text" style="width: 100px" id="Cant1" name="Cant"> 
																</fieldset>
															</td>
															<td> 
																<fieldset>Vlr Total
																  <div class="col"><label for="VlrTotal"></label></div>
																  <input type="text" style="width: 150px" id="Vlrtotal1" name="VlrTotal1" disabled> 
																</fieldset>
															</td>
														</tr>
														<tr>
															<td> 
																<fieldset>         
																	<div class="col-12"><label for="Codigo"></label></div>
																	<input type="text" style="width: 150px" class="Codigo2" name="Codigo">
																	<button type="button" style= "margin:5px 5px" class="btn btn-secondary">CONSULTAR</button>
														  		</fieldset>
														 	</td>
															<td> 
																<fieldset>
																  <div class="col"><label for="Nombre"></label></div>
																  <input type="text" style="width: 300px; margin-right: 30px" id="Nombre2" name="Nombre2" disabled> 
																</fieldset>
															</td>
															<td> 
																<fieldset>
																  <div class="col"><label for="Cant"></label></div>
																  <input type="text" style="width: 100px" id="Cant2" name="Cant"> 
																</fieldset>
															</td>
															<td> 
																<fieldset>
																  <div class="col"><label for="VlrTotal2"></label></div>
																  <input type="text" style="width: 150px" id="Vlrtotal2" name="VlrTotal2" disabled> 
																</fieldset>
															</td>
														</tr>
														<tr>
															<td> 
																<fieldset>                
																	<div class="col-12"><label for="Codigo"></label></div>
																	<input type="text" style="width: 150px" class="Codigo3" name="Codigo">
																	<button type="button" style= "margin:5px 5px" class="btn btn-secondary">CONSULTAR</button>
													  			</fieldset>
														 	</td>
															<td> 
																<fieldset>
																  <div class="col"><label for="Nombre"></label></div>
																  <input type="text" style="width: 300px; margin-right: 30px" id="Nombre3" name="Nombre3" disabled> 
																</fieldset>
															</td>
															<td> 
																<fieldset>
																  <div class="col"><label for="Cant"></label></div>
																  <input type="text" style="width: 100px" id="Cant3" name="Cant"> 
																</fieldset>
															</td>
															<td> 
																<fieldset>
																  <div class="col"><label for="VlrTotal3"></label></div>
																  <input type="text" style="width: 150px" id="Vlrtotal3" name="VlrTotal3" disabled> 
																</fieldset>
															</td>	
														</tr>
														<tr></tr>
														<tr></tr>
														<tr>
															<td></td>
															<td></td>
															<td colspan="2">
																<fieldset style="margin: 5px 0px">Subtotal
													  				<input type="text" style="width: 150px; margin-left: 13px;" id="TotalVenta" name="TotalVenta"> 
																</fieldset>
																<fieldset style="margin: 5px 0px">Total IVA
														  			<input type="text" style="width: 150px; margin-left: 10px;" id="TotalIVA" name="TotalIVA"> 
																</fieldset>
																<fieldset style="margin: 5px 0px">TOTAL
															  		<input type="text" style="width: 150px; margin-left: 28px;" id="TotalVentaconIva" name="TotalVentaconIva"> 
																</fieldset>
															</td>
															<td>
																<button type="button" class="btn btn-info">REGISTRAR</button>
															</td>
														</tr>
													</table>
												</form>
						 					</div>
					 					</div>
					  				</div>
								</div>
			 				</section>
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
    
    <!-- .container-fluid -->
	<script src="js/jquery.min.js"></script>
	<script src="js/parallax.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>