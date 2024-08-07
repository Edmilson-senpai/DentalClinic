<%-- 
    Document   : nuevahistoria
    Created on : 23/09/2022, 12:07:45 p. m.
    Author     : reygr
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Nuevo cliente</title>
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        if(session.getAttribute("apellidos") == null && session.getAttribute("nombres") == null){
            response.sendRedirect("/DentoSmile/index.html");
        }
        %>        
        <!-- ICONS -->
        <script src="https://kit.fontawesome.com/a75040fded.js" crossorigin="anonymous"></script>
        <!-- FOOTER -->
        <link href="../css/footer.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="../css/animate.css">
        <link rel="stylesheet" href="../css/owl.carousel.min.css">
        <link rel="stylesheet" href="../css/owl.theme.default.min.css">
        <link rel="stylesheet" href="../css/magnific-popup.css">
        <link rel="stylesheet" href="../css/aos.css">
        <link rel="stylesheet" href="../css/ionicons.min.css">
        <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="../css/jquery.timepicker.css">
        <link rel="stylesheet" href="../css/flaticon.css">
        <link rel="stylesheet" href="../css/icomoon.css">
        <link rel="stylesheet" href="../css/style.css">        
        
        
        
	<!-- Normalize V8.0.1 -->
	<link rel="stylesheet" href="../templateviewlogin/css/normalize.css">
	<!-- Bootstrap V4.3 -->
	<link rel="stylesheet" href="../templateviewlogin/css/bootstrap.min.css">
	<!-- Bootstrap Material Design V4.0 -->
	<link rel="stylesheet" href="../templateviewlogin/css/bootstrap-material-design.min.css">
	<!-- Font Awesome V5.9.0 -->
	<link rel="stylesheet" href="../templateviewlogin/css/all.css">
	<!-- Sweet Alerts V8.13.0 CSS file -->
	<link rel="stylesheet" href="../templateviewlogin/css/sweetalert2.min.css">
	<!-- Sweet Alert V8.13.0 JS file-->
	<script src="../templateviewlogin/js/sweetalert2.min.js" ></script>
	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<link rel="stylesheet" href="../templateviewlogin/css/jquery.mCustomScrollbar.css">
	<!-- General Styles -->
	<link rel="stylesheet" href="../templateviewlogin/css/style.css">
</head>


<body>
    <!-- Main container -->
    <main class="full-box main-container">
        <!-- Nav lateral -->
		<section class="full-box nav-lateral">
			<div class="full-box nav-lateral-bg show-nav-lateral"></div>
			<div class="full-box nav-lateral-content">
				<figure class="full-box nav-lateral-avatar">
					<i class="far fa-times-circle show-nav-lateral"></i>
					<img src="../templateviewlogin/assets/avatar/Avatar.png" class="img-fluid" alt="Avatar">
					<figcaption class="roboto-medium text-center">
                                          <%=request.getSession().getAttribute("apellidos")%>, <%=request.getSession().getAttribute("nombres")%> <br> <!-- Nombre del usuario que ingresa -->
                                        <small class="roboto-condensed-light">Médico</small>
					</figcaption>
				</figure>
				<div class="full-box nav-lateral-bar"></div>
				<nav class="full-box nav-lateral-menu">
					<ul>
						<li>
							<a href="./dashboard.jsp"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Dashboard</a>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-users fa-fw"></i> &nbsp; Clientes <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="./nuevocliente.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Agregar Cliente</a>
								</li>
								<li>
									<a href="./listacliente.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de clientes</a>
								</li>
								<li>
									<a href="./busquedacliente.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar cliente</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fa-solid fa-book-medical"></i> &nbsp; Historica Médica <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="./nuevahistoria.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Nuevo historia</a>
								</li>
								<li>
									<a href="./listahistoria.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de historias</a>
								</li>
								<li>
									<a href="./busquedahistoria.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar historia</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fa-solid fa-people-group"></i> &nbsp; Usuarios <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="./listausuario.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de usuarios</a>
								</li>
								<li>
									<a href="./busquedausuario.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar usuario</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="./sucursales.jsp"><i class="fa-solid fa-hospital"></i> &nbsp; Sucursales</a>
						</li>
					</ul>
				</nav>
			</div>
		</section>
        <section class="full-box page-content">


            <nav class="full-box navbar-info">
                    <a href="#" class="float-left show-nav-lateral">
                            <i class="fas fa-exchange-alt"></i>
                    </a>
                    <form action="/DentoSmile/LogoutController">
                        <input type="submit" value="Cerrar Sesion" class="fas fa-power-off">
                    </form>                            
            </nav>
            <!-- Page header -->
            <div class="full-box page-header">
                <h3 class="text-left">
                    <i class="fas fa-plus fa-fw"></i> &nbsp; NUEVA HISTORIA
                </h3>
                <p class="text-justify">
                    
                </p>
            </div>
            <div class="container-fluid">
                <ul class="full-box list-unstyled page-nav-tabs">
                    <li>
                        <a class="active" href="./nuevahistoria.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; NUEVA HISTORIA</a>
                    </li>
                    <li>
                        <a href="./listahistoria.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE HISTORIAS</a>
                    </li>
                    <li>
                        <a href="./busquedahistoria.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; BUSCAR HISTORIA</a>
                    </li>

                </ul>
            </div>
            
            <!--CONTENT-->
            <div class="container-fluid">
            	<div class="container-fluid form-neon">                                        
                    <!-- INICIO SECCION BUSCAR CLIENTE -->                        

			<div class="container-fluid">
				<form class="form-neon" action="">
					<div class="container-fluid">
						<div class="row justify-content-md-center">
							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="inputSearch" class="bmd-label-floating">¿Qué cliente estás buscando? Inserta DNI</label>
									<input type="text" class="form-control" name="busqueda" id="inputSearch" maxlength="30">                                                                          
								</div>
							</div>
							<div class="col-12">
								<p class="text-center" style="margin-top: 40px;">
                                                                    <button type="submit" class="btn btn-raised btn-info" name="busqueda"><i class="fas fa-search" name></i> &nbsp; BUSCAR</button>
								</p>
							</div>                                                                                                                            
						</div>
					</div>                               
				</form>
			</div>  
                    

			<div class="container-fluid">
				<form action="">
					<input type="hidden" name="eliminar-busqueda" value="eliminar">
					<div class="container-fluid">
						<div class="row justify-content-md-center">
							<div class="col-12">
								<p class="text-center" style="margin-top: 20px;">
									<button type="submit" class="btn btn-raised btn-danger"><i class="far fa-trash-alt"></i> &nbsp; ELIMINAR BÚSQUEDA</button>
								</p>
							</div>
						</div>
					</div>
				</form>
			</div>   
                    <form action="/DentoSmile/GuardarNuevaHistoriaClinicaController" class="form-neon" autocomplete="off" method="post">
			<div class="container-fluid">
				<div class="table-responsive">
					<table class="table table-dark table-sm">
                                                <tbody>
                                                <%
                                                            Connection cnx = null;
                                                            Statement sta = null;
                                                            ResultSet rs = null;                                                
                                                
                                                try {
                                                        String buscarnombre = "";                                                        
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3308/bddentosmile?user=root&password=");
                                                        sta = cnx.createStatement();
                                                         
                                                        buscarnombre = request.getParameter("busqueda");
                                                        if (buscarnombre == null) {                                                                                                                            
                                                            
                                                            System.out.println("buscarnombre = null: " +buscarnombre );
                                                        }else{
                                                            rs=sta.executeQuery("SELECT clientedni,clientenombre,clienteapellido,clientetelefono,clientecorreo FROM cliente WHERE clientedni = " + buscarnombre);   
                                                            System.out.println("buscarnombre != null: " +buscarnombre );
                                                        }
                                                        while(rs.next()){
                                                            %>
                                                                    <div class="form-group">
                                                                        <label for="dni_cliente_historia">Dni</label>
                                                                        <input type="text" class="form-control" name="dni_cliente_historia" id="dni_cliente_historia" value="<%=rs.getString(1)%>">
                                                                    </div> 
                                                                    <div class="form-group">
                                                                        <label for="nombre_cliente_historia">Nombre</label>
                                                                        <input type="text" class="form-control" name="nombre_cliente_historia" id="nombre_cliente_historia" value="<%=rs.getString(2)%>">
                                                                    </div>                                                                     
                                                                    <div class="form-group">
                                                                        <label for="apellido_cliente_historia">Apellido</label>
                                                                        <input type="text" class="form-control" name="apellido_cliente_historia" id="apellido_cliente_historia" value="<%=rs.getString(3)%>">
                                                                    </div>                                                             
                                                            <%
                                                        }
                                                        sta.close();
                                                        rs.close();
                                                        cnx.close();
                                                    } catch (Exception e) {}
                                                
                                                %>                                                                                                    
                                                </tbody>
                                                
					</table>
				</div>                                                                                                                                           
			</div>                    
                                                           
                    <!-- FIN SECCION BUSCAR CLIENTE -->
                    
                    <!-- INICIO SECCION INFORMACION HISTORIA--> 
                    
                        <fieldset>
                            <legend><i class="far fa-plus-square"></i> &nbsp; Información de la historia</legend>
                                <div class="container-fluid">           
                                    <div class="row">
                                        <div class="col-12 col-md-4">
                                            <div class="form-group">
                                                <label for="servicio_historia" class="bmd-label-floating">Servicio</label>
                                                    <select class="form-control" name="servicio_historia">
                                                        <option value="" selected="" disabled="">Seleccione una opción</option>
                                                        <option value="Limpieza Dental"> Limpieza Dental </option>
                                                        <option value="Ortodoncia"> Ortodoncia </option>
                                                        <option value="Endodoncia"> Endodoncia </option>
                                                        <option value="Endodoncia"> Blanqueamiento Dental </option>
                                                        <option value="Endodoncia"> Implantes Dentales </option>
                                                        <option value="Endodoncia"> Calculos Dentales </option>
                                                    </select>
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6">
                                                <div class="form-group">
                                                        <label for="comentario_1_historia" class="bmd-label-floating">Comentarios</label>
                                                        <input type="text" class="form-control" name="comentario_1_historia" id="comentario_1_historia" maxlength="100">
                                                </div>
                                        </div>
	                                <div class="col-12 col-md-6">
	                                    <div class="form-group">
	                                        <label for="comentario_2_historia" class="bmd-label-floating">Receta</label>
	                                        <input type="text"  class="form-control" name="comentario_2_historia" id="comentario_2_historia" maxlength="100">
	                                    </div>
	                                </div>
	                                <div class="col-12">
	                                    <div class="form-group">
	                                        <label for="observacion_historia" class="bmd-label-floating">Observación</label>
	                                        <input type="text"  class="form-control" name="observacion_historia" id="observacion_historia" maxlength="400">
	                                    </div>
	                                </div>
                                    </div>
				</div>
			</fieldset>
                        <br><br><br>
                        <p class="text-center" style="margin-top: 40px;">
                                <button type="reset" class="btn btn-raised btn-secondary btn-sm"><i class="fas fa-paint-roller"></i> &nbsp; LIMPIAR</button>
                                &nbsp; &nbsp;
                                <button type="submit" class="btn btn-raised btn-info btn-sm" id="btn-guardar"><i class="far fa-save"></i> &nbsp; GUARDAR</button>
                        </p>
                    </form>                             
            	</div>
            </div>
        </section>
    </main>
    
    	
	<!--=============================================
	=            Include JavaScript files           =
	==============================================-->
	<!-- jQuery V3.4.1 -->
	<script src="../templateviewlogin/js/jquery-3.4.1.min.js" ></script>

	<!-- popper -->
	<script src="../templateviewlogin/js/popper.min.js" ></script>

	<!-- Bootstrap V4.3 -->
	<script src="../templateviewlogin/js/bootstrap.min.js" ></script>

	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<script src="../templateviewlogin/js/jquery.mCustomScrollbar.concat.min.js" ></script>

	<!-- Bootstrap Material Design V4.0 -->
	<script src="../templateviewlogin/js/bootstrap-material-design.min.js" ></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

	<script src="../templateviewlogin/js/main.js" ></script>
        <script src="../../js/funcionesnuevocliente.js" ></script>
</body>
</html>
