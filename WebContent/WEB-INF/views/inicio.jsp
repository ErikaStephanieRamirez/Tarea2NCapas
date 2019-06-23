<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<meta charset="ISO-8859-1">
<title>Inicio</title>

<style type="text/css">
body {
	background-color: #f2f2f2;
}

body>.grid {
	height: 100%;
}

</style>

</head>

<body>
    
	<div class="container" style="width: 100%;height: 150px ; background-size: 100% 100%; background-repeat: no-repeat; background:#13afa0;">
		<form name="agregar" action="${pageContext.request.contextPath}/AgregarS" method="post">
		<div style="text-align: center; padding-top:50px">
		<span style= "font-size: 50px;">Restaurante Rustico</span></div>
		<div class="ui vertical labeled icon buttons" style="margin-top: 10px; position:absolute; right: 10px;">
  <button class="ui button">
    <i class="user plus icon"></i>
    Agregar Sucursal
  </button></div>
	</form>
	
	</div>
	<div style="text-align: center; margin:20px">
	<span style= "font-size: 20px;">Lista de sucursales de Restaurante Rustico:</span></div>
	<div class="ui middle aligned center aligned grid">
		<div style="margin-top: 30px">
			<table class="ui teal table">
				<thead style="aling:center">
					<tr style="padding: 3px;">
						<th>Sucursal</th>
						<th>Ver</th>
						<th>Editar</th>
						<th>Eliminar</th>
					</tr>
				</thead>
				<c:forEach items="${sucursal}" var="sucursal">
					<tbody>
						<tr style="padding: 15px;">
							<th style="padding: 15px;">${sucursal.nombreS}</th>

							<th><form name="form1"
									action="${pageContext.request.contextPath}/PerfilS"
									method="post">
									<INPUT type="Hidden" name="id_sucursal" value=${sucursal.idSucursal}> 
									<button class="ui animated button" style="background: #13afa0;margin: 3px;" tabindex="0">
										<div class="hidden content" style="color: white;">Ver perfil</div>
										<div class="visible content">
										<i class="users icon"></i>
										</div>
									</button>
								</form></th>

							<th><form name="form2" action="${pageContext.request.contextPath}/EditarS" method="post">
									<INPUT type="Hidden" name="id_sucursal" value=${sucursal.idSucursal}>
									<button class="ui animated button" tabindex="0" style="background: #13afa0">
										<div class="hidden content" style="color: white;">Editar</div>
										<div class="visible content">
										<i class="edit icon"></i>
										</div>
									</button>
								</form></th>

							<th><form name="form3" action="${pageContext.request.contextPath}/EliminarS" method="post">
									<INPUT type="Hidden" name="id_sucursal" value=${sucursal.idSucursal}>
									<button class="ui animated button" tabindex="0" style="background: #13afa0;" >
										<div class="hidden content" style="color: white;" >Eliminar</div>
										<div class="visible content">
											<i class="trash icon"></i>
										</div>
									</button>
									
								</form></th>

						</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</body>
</html>

