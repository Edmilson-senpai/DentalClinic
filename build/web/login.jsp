<%-- 
    Document   : login
    Created on : 22/09/2022, 9:21:07 p. m.
    Author     : reygr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Login</title>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>

	<!-- Normalize V8.0.1 -->
	<link rel="stylesheet" href="vistas/templateviewlogin/css/normalize.css">

	<!-- Bootstrap V4.3 -->
	<link rel="stylesheet" href="vistas/templateviewlogin/css/bootstrap.min.css">

	<!-- Bootstrap Material Design V4.0 -->
	<link rel="stylesheet" href="vistas/templateviewlogin/css/bootstrap-material-design.min.css">

	<!-- Font Awesome V5.9.0 -->
	<link rel="stylesheet" href="vistas/templateviewlogin/css/all.css">

	<!-- Sweet Alerts V8.13.0 CSS file -->
	<link rel="stylesheet" href="vistas/templateviewlogin/css/sweetalert2.min.css">

	<!-- Sweet Alert V8.13.0 JS file -->
	<script src="vistas/templateviewlogin/js/sweetalert2.min.js" ></script>

	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<link rel="stylesheet" href="vistas/templateviewlogin/css/jquery.mCustomScrollbar.css">
	
	<!-- General Styles -->
	<link rel="stylesheet" href="vistas/templateviewlogin/css/style.css">
</head>

<%  String rspta="";
    if(request.getParameter("rspta")!=null){
        int r = Integer.parseInt(request.getParameter("rspta"));
        if (r==0) {
                rspta="Error: Datos incorrectos";
            }
    }
%>
<body>

	<div class="login-container">
		<div class="login-content">
			<p class="text-center">
				<i class="fas fa-user-circle fa-5x"></i>
			</p>
			<p class="text-center">
				Inicia sesión con tu cuenta
			</p>
                        <form method="post"  action="/DentoSmile/LoginController" id="formularioLogin">
				<div class="form-group">
					<label for="UserName" class="bmd-label-floating"><i class="fas fa-user-secret"></i> &nbsp; Usuario</label>
                                        <input type="text" class="form-control" id="UserName" name="usuario" maxlength="35" required>
				</div>
				<div class="form-group">
					<label for="UserPassword" class="bmd-label-floating"><i class="fas fa-key"></i> &nbsp; Contraseña</label>
					<input type="password" class="form-control" id="UserPassword" name="clave" maxlength="200" required>
				</div>
                            <input type="submit" class="btn-login text-center" name="btn-login"  value="Ingresar">
                            <p style="color: red"><%=rspta %></p>                          
			</form>
		</div>
	</div>

	
	<!--=============================================
	=            Include JavaScript files           =
	==============================================-->
	<!-- jQuery V3.4.1 -->
	<script src="vistas/templateviewcliente/js/jquery-3.4.1.min.js" ></script>

	<!-- popper -->
	<script src="vistas/templateviewcliente/js/popper.min.js" ></script>

	<!-- Bootstrap V4.3 -->
	<script src="vistas/templateviewcliente/js/bootstrap.min.js" ></script>

	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<script src="vistas/templateviewcliente/js/jquery.mCustomScrollbar.concat.min.js" ></script>

	<!-- Bootstrap Material Design V4.0 -->
        <script src="vistas/templateviewlogin/js/bootstrap-material-design.min.js" ></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

	<script src="vistas/templateviewcliente/js/main.js" ></script>
</body>
</html>
