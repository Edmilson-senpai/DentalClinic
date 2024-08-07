<%-- 
    Document   : busquedahistoria
    Created on : 2/10/2022, 1:21:20 a. m.
    Author     : reygr
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Buscar prestamos</title>
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
                                        <small class="roboto-condensed-light">Administrador</small>
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
                    <i class="fas fa-search fa-fw"></i> &nbsp; BUSCAR HISTORIAS
                </h3>
                <p class="text-justify">
                    
                </p>
            </div>
            <div class="container-fluid">
                <ul class="full-box list-unstyled page-nav-tabs">
                    <li>
                        <a href="./nuevahistoria.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; NUEVA HISTORIA</a>
                    </li>
                    <li>
                        <a href="./listahistoria.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE HISTORIAS</a>
                    </li>
                    <li>
                        <a class="active" href="./busquedahistoria.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; BUSCAR HISTORIAS</a>
                    </li>
                </ul>
            </div>
            
            <!--CONTENT-->
            <div class="container-fluid">
				<form class="form-neon" action="">
					<div class="container-fluid">
						<div class="row justify-content-md-center">
							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="inputSearch" class="bmd-label-floating">¿Qué historia estas buscando? Busca al cliente</label>
									<input type="text" class="form-control" name="busqueda" id="inputSearch" maxlength="30">
								</div>
							</div>
							<div class="col-12">
								<p class="text-center" style="margin-top: 40px;">
									<button type="submit" class="btn btn-raised btn-info"><i class="fas fa-search"></i> &nbsp; BUSCAR</button>
								</p>
							</div>
						</div>
					</div>
				</form>
			</div>

			
			<div class="container-fluid">
				<form action="">
					<input type="hidden" name="eliminar_busqueda_reservation" value="eliminar">
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


			 <div class="container-fluid">
				<div class="table-responsive">
					<table class="table table-dark table-sm">
						<thead>
							<tr class="text-center roboto-medium">
                                                                <th style="display: none;">IDHISTORIA</th>
								<th>DNI</th>
								<th>NOMBRE</th>
								<th>APELLIDO</th>
                                                                <th>SERVICIO</th>
								<th>COMENTARIOS</th>
								<th>RECETA</th>
                                                                <th>OBSERVACIONES</th>
                                                                <th>FECHA ULTIMA ATENCIÓN</th>
								<th>ACTUALIZAR</th>
							</tr>
						</thead>
                                                <tbody>
                                                <%
                                                Connection cnx = null;
                                                Statement sta = null;
                                                ResultSet rs = null;
                                                
                                                try {
                                                        String buscardni = ""; 
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3308/bddentosmile?user=root&password=");
                                                        sta = cnx.createStatement();
                                                        rs=sta.executeQuery("SELECT idhistoria,dni_cliente_historia,nombre_cliente_historia,apellido_cliente_historia,servicio_historia,comentario_1_historia,comentario_2_historia,observacion_historia,fecha_atencion_historia FROM historiaclinica");
                                                        buscardni = request.getParameter("busqueda");
                                                        if (buscardni == null) {                                                                                                                            
                                                            rs=sta.executeQuery("SELECT idhistoria,dni_cliente_historia,nombre_cliente_historia,apellido_cliente_historia,servicio_historia,comentario_1_historia,comentario_2_historia,observacion_historia,fecha_atencion_historia FROM historiaclinica"); 
                                                            System.out.println("buscardni = null: " +buscardni );
                                                        }else{
                                                            rs=sta.executeQuery("SELECT idhistoria,dni_cliente_historia,nombre_cliente_historia,apellido_cliente_historia,servicio_historia,comentario_1_historia,comentario_2_historia,observacion_historia,fecha_atencion_historia FROM historiaclinica WHERE dni_cliente_historia = " + buscardni);   
                                                            System.out.println("buscardni != null: " +buscardni );
                                                        }                                                         
                                                        while(rs.next()){
                                                            %>
                                                            <tr class="text-center">
                                                                <form action="/DentoSmile/EliminarHistoriaController" method="post">
                                                                    <th style="display: none;"><%=rs.getString(1)%> <input type="hidden" name="idhistoria" value="<%=rs.getString(1)%>"></th>
                                                                    <th><%=rs.getString(2)%> <input type="hidden" name="dni_cliente_historia" value="<%=rs.getString(2)%>"></th>
                                                                    <th><%=rs.getString(3)%> <input type="hidden" name="nombre_cliente_historia" value="<%=rs.getString(3)%>"></th>
                                                                    <th><%=rs.getString(4)%> <input type="hidden" name="apellido_cliente_historia" value="<%=rs.getString(4)%>"></th>
                                                                    <th><%=rs.getString(5)%> <input type="hidden" name="servicio_historia" value="<%=rs.getString(5)%>"></th>
                                                                    <th><%=rs.getString(6)%> <input type="hidden" name="comentario_1_historia" value="<%=rs.getString(6)%>"></th>
                                                                    <th><%=rs.getString(7)%> <input type="hidden" name="comentario_2_historia" value="<%=rs.getString(7)%>"></th>
                                                                    <th><%=rs.getString(8)%> <input type="hidden" name="observacion_historia" value="<%=rs.getString(8)%>"></th>
                                                                    <th><%=rs.getString(9)%> <input type="hidden" name="fecha_atencion_historia" value="<%=rs.getString(9)%>"></th>
                                                                    <td>
                                                                            <a href="./actualizahistoria.jsp?idhistoria=<%=rs.getString(1)%>" class="btn btn-success">
                                                                                    <i class="fas fa-sync-alt"></i>	
                                                                            </a>
                                                                    </td>
                                                                </form>
                                                            </tr>                                                            
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
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled">
							<a class="page-link" href="#" tabindex="-1">Previous</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item">
							<a class="page-link" href="#">Next</a>
						</li>
					</ul>
				</nav>
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
</body>
</html>
