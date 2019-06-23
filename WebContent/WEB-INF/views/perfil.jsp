<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<title>Perfil Sucursal</title>

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

	<div class="container"
		style="width: 100%; height: 150px; background-size: 100% 100%; background-repeat: no-repeat; background: #13afa0;">
		
			<div style="text-align: center; padding-top: 50px">
				<span style="font-size: 50px;">Restaurante Rustico</span>
			</div>
			<form name="agregar"
			action="${pageContext.request.contextPath}/volver" method="post">
			<div class="ui vertical labeled icon buttons"
				style="margin-top: 10px; position: absolute; left: 10px;">
				<button class="ui button">
					<i class="arrow left icon"></i> Volver
				</button>
			</div>
		</form>
		<form name="add" action="${pageContext.request.contextPath}/AgregarE"
			method="post">
			<INPUT TYPE="Hidden" NAME="id" value=${sucursal.idSucursal}>
			<div class="ui vertical labeled icon buttons" style="margin-top: 10px; position:absolute; right: 10px;">
  <button class="ui button">
    <i class="user plus icon"></i>
    Agregar Empleado
  </button></div>
		</form>
	</div>

	<br>
	<div style="text-align: center; margin: 20px">
		<h2 class="ui dividing header">Sucursal ${sucursal.nombreS}</h2>
	</div>
	<div class="ui middle aligned center aligned grid">
		<div style="margin-top: 30px">
			<table class="ui teal table">
				<thead style="aling: center">
					<tr style="padding: 3px;">

						<th style="padding: 15px;">Hora Apertura</th>
						<th style="padding: 15px;">Hora Cierre</th>
						<th style="padding: 15px;">Ubicacion</th>
						<th style="padding: 15px;">Numero de Mesas</th>
						<th style="padding: 15px;">Nombre de Gerente</th>
					</tr>

				</thead>
				<tbody>
					<tr>
						<th style="padding: 15px;">${sucursal.horaA}</th>
						<th style="padding: 15px;">${sucursal.horaC}</th>
						<th style="padding: 15px;">${sucursal.ubicacion}</th>
						<th style="padding: 15px;">${sucursal.nMesas}</th>
						<th style="padding: 15px;">${sucursal.nomGerente}</th>
					</tr>
				</tbody>
			</table>
		
		<br> <br>
		<div style="text-align: center; margin: 20px">
			<h2 class="ui dividing header">Empleados:</h2>
		</div>
			<table class="ui teal table">
				<thead style="aling: center">
					<tr style="padding: 3px;">
						<th style="padding: 15px;">Nombre</th>
						<th style="padding: 15px;">Edad</th>
						<th style="padding: 15px;">Genero</th>
						<th style="padding: 15px;">Estado</th>
						<th style="padding: 15px;">Editar</th>
						<th style="padding: 15px;">Eliminar</th>
					</tr>
				</thead>
				<c:forEach items="${empleado}" var="empleado">
					<tbody>
						<tr>
							<th style="padding: 15px;">${empleado.nombreE}</th>
							<th style="padding: 15px;">${empleado.edad}</th>
							<th style="padding: 15px;">${empleado.genero}</th>
							<th style="padding: 15px;">${empleado.estadoE}</th>
							<th style="padding: 15px;">
							<form name="edit"
									action="${pageContext.request.contextPath}/EditarE"
									method="post">
									<INPUT TYPE="Hidden" NAME="id_empleado" value=${empleado.idEmpleado}>
										<button class="ui animated button" tabindex="0" style="background: #13afa0">
										<div class="hidden content" style="color: white;">Editar</div>
										<div class="visible content">
										<i class="edit icon"></i>
										</div>
									</button>
								</form></th>
							<th><form name="Borrar"
									action="${pageContext.request.contextPath}/BorrarE"
									method="post">
									<INPUT TYPE="Hidden" NAME="id_empleado"
										value=${empleado.idEmpleado}>
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
		<br>

		
		<br></div>
	</div>
</body>
</html>