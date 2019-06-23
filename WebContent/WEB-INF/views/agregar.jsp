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
<title>Agregar Sucursal</title>

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
		<form name="agregar"
			action="${pageContext.request.contextPath}/volver" method="post">
			<div style="text-align: center; padding-top: 50px">
				<span style="font-size: 50px;">Restaurante Rustico</span>
			</div>
			<div class="ui vertical labeled icon buttons"
				style="margin-top: 10px; position: absolute; left: 10px;">
				<button class="ui button">
					<i class="arrow left icon"></i> Volver
				</button>
			</div>
		</form>

	</div>

	<div class="ui middle aligned center aligned grid">
		<div style="margin-top: 30px">

			<form:form class="ui large form"
				action="${pageContext.request.contextPath}/NuevaS" method="POST"
				modelAttribute="sucursal">
				<div class="ui stacked segment" style="width: 500px">
					<h2 class="ui dividing header">Nueva Sucursal</h2>
					<div class="field">
						<form:input TYPE="Hidden" name="id" path="idSucursal" />

						<label>Nombre de la sucursal: </label>
						<form:input type="text" name="nombreS" path="NombreS" />
						<br>
						<form:errors path="NombreS" cssStyle="color:#E81505;"></form:errors>
						<div class="two fields">
							<div class="field">
								<br> <label>Hora de apertura: </label>
								<form:input type="Time" name="horaA" path="HoraA" />
								<br>

								<form:errors path="HoraA" cssStyle="color:#E81505;"></form:errors>
							</div>
							<div class="field">
								<br> <label>Hora de cierre: </label>
								<form:input type="Time" name="horaC" path="HoraC" />
								<br>
								<form:errors path="HoraC" cssStyle="color:#E81505;"></form:errors>
							</div>
						</div>
						<br> <label>Ubicaci&oacute;n: </label>
						<form:input type="text" name="ubicacion" path="Ubicacion" />
						<br>
						<form:errors path="Ubicacion" cssStyle="color:#E81505;"></form:errors>
						<br> <br> <label>N&uacute;mero de mesas: </label>
						<form:input type="Number" name="nMesas" path="nMesas" />
						<br>
						<form:errors path="nMesas" cssStyle="color:#E81505;"></form:errors>
						<br>
						<br> <label>Nombre Gerente: </label>
						<form:input type="text" name="nomGerente" path="nomGerente" />
						<br>
						<form:errors path="nomGerente" cssStyle="color:#E81505;"></form:errors>
						<br>
						<br>
						<div style="text-align: center;">
							<button class="ui animated button" tabindex="0"
								style="background: #13afa0">
								<div class="visible content" style="color: white;">Guardar</div>
								<div class="hidden content">
									<i class="save outline icon"></i>
								</div>
							</button>
						</div>
					</div>
				</div>
			</form:form>
			<br> <br>
		</div>
	</div>
	<br>
	<br>
</body>
</html>