<%-- 
    Document   : nuevousuario
    Created on : 22/09/2022, 11:57:21 p. m.
    Author     : reygr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Nuevo usuario</title>
        
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
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

		<!-- Page content -->
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
					<i class="fas fa-plus fa-fw"></i> &nbsp; NUEVO USUARIO
				</h3>
				<p class="text-justify">
					
				</p>
			</div>
			
			<div class="container-fluid">
				<ul class="full-box list-unstyled page-nav-tabs">
					<li>
						<a class="active" href="./nuevousuario.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; NUEVO USUARIO</a>
					</li>
					<li>
						<a href="./listausuario.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE USUARIOS</a>
					</li>
					<li>
						<a href="./busquedausuario.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; BUSCAR USUARIO</a>
					</li>
				</ul>	
			</div>
			
			<!-- Content -->
			<div class="container-fluid">
                            <form action="/DentoSmile/GuardarRegistroUsuarioController" class="form-neon" autocomplete="off" id="formularioNuevoUsuario" method="post">
					<fieldset>
						<legend><i class="far fa-address-card"></i> &nbsp; Información personal</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="usuario_dni" class="bmd-label-floating">DNI</label>
                                                                                <input type="text"  pattern="[0-9-]{1,20}" class="form-control" name="usuario_dni" id="usuario_dni" maxlength="20" required="">
									</div>
								</div>
								
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="usuario_nombre" class="bmd-label-floating">Nombres</label>
										<input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,35}" class="form-control" name="usuario_nombre" id="usuario_nombre" maxlength="35" required="" onkeyup="nombreUsuario()">
									</div>
								</div>
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="usuario_apellido" class="bmd-label-floating">Apellidos</label>
										<input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,35}" class="form-control" name="usuario_apellido" id="usuario_apellido" maxlength="35" required="" onkeyup="nombreUsuario()">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_telefono" class="bmd-label-floating">Celular</label>
										<input type="text" pattern="[0-9()+]{1,20}" class="form-control" name="usuario_telefono" id="usuario_telefono" required="" maxlength="20">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_direccion" class="bmd-label-floating">Dirección</label>
										<input type="text" class="form-control" name="usuario_direccion" id="usuario_direccion" maxlength="190" required="">
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<br><br><br>
					<fieldset>
						<legend><i class="fas fa-user-lock"></i> &nbsp; Información de la cuenta</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_usuario" class="bmd-label-floating">Nombre completo</label>
                                                                                <input type="text" pattern="[a-zA-Z0-9]{1,35}" class="form-control" name="usuario_usuario" id="usuario_usuario" maxlength="35" readonly>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_email" class="bmd-label-floating">Email</label>
										<input type="email" class="form-control" name="usuario_email" id="usuario_email" maxlength="70" required="">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_clave_1" class="bmd-label-floating">Contraseña</label>
                                                                                <input type="password" class="form-control" name="usuario_clave_1" id="usuario_clave_1" maxlength="200" onkeyup="coincidirContrasena()">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="usuario_clave_2" class="bmd-label-floating">Repetir contraseña</label>
										<input type="password" class="form-control" name="usuario_clave_2" id="usuario_clave_2" maxlength="200" onkeyup="coincidirContrasena()">
									</div>
								</div>
                                                            <br>
                                                            <label class="col-12 col-md-6" id="avisoContrasena">_____________________</label>
							</div>
						</div>
					</fieldset>
					<br><br><br>
					<fieldset>
						<legend><i class="fas fa-medal"></i> &nbsp; Nivel de privilegio</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12">
									<p><span class="badge badge-info">Administrador</span> Permisos totales para registrar, actualizar y eliminar</p>
									<p><span class="badge badge-success">Médico</span> Permisos para registrar y actualizar</p>
									
									<div class="form-group">
										<select class="form-control" name="usuario_privilegio">
											<option value="" selected="" disabled="">Seleccione una opción</option>
											<option value="1">Administrador</option>
											<option value="2">Médico</option>
											
										</select>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<p class="text-center" style="margin-top: 40px;">
						<button type="reset" class="btn btn-raised btn-secondary btn-sm" id="btn-resetear" onclick="resetearFormulario()"><i class="fas fa-paint-roller"></i> &nbsp; LIMPIAR</button>
						&nbsp; &nbsp;
                                                <button type="submit" class="btn btn-raised btn-info btn-sm" id="btn-guardar" disabled=""><i class="far fa-save"></i> &nbsp; GUARDAR</button>
					</p>
				</form>
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
        
        <script src="../../js/funcionesnuevousuario.js" ></script>
</body>
</html>
