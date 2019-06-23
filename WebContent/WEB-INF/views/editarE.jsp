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
<title>Editar Empleado</title>

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
			action="${pageContext.request.contextPath}/volverP" method="post">
			<INPUT TYPE="Hidden" NAME="idSucursal" value=${empleado.idSucursal}>
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
			<form:form class="ui large form" action="${pageContext.request.contextPath}/GuardarE"
				method="POST" modelAttribute="empleado">

				<form:input TYPE="Hidden" name="id" path="idEmpleado" />

				<form:input TYPE="Hidden" name="id2" path="idSucursal" />

				<div class="ui stacked segment" style="width: 500px">
					<h2 class="ui dividing header">Empleado ${empleado.nombreE}</h2>
					<div class="field">
						<label>Nombre del Empleado: </label>
						<form:input type="text" name="nombreE" path="NombreE" />
						<form:errors path="NombreE" cssStyle="color:#E81505;">
						</form:errors>
						<br> <br> 
						<label>Edad del empleado: </label>
						<form:input type="Number" name="edad" path="Edad" />
						<br>
						<form:errors path="Edad" cssStyle="color:#E81505;">
						</form:errors>
						<br> <br>

						<div class="inline fields">
							<label>G&eacute;nero del empleado: </label>
							<div class="field">
								<div class="ui radio checkbox">
									<form:radiobutton name="gender" path="genero" value="Masculino"
										checked="checked" />
									<label>Masculino</label>
								</div>
							</div>
							<div class="field">
								<div class="ui radio checkbox">
									<form:radiobutton name="gender" path="genero" value="Femenino" />
									<label>Femenino</label>
								</div>
							</div>
						</div>
						<br>
						<div class="inline fields">
							<label>Estado del empleado: </label>
							<div class="field">
								<div class="ui radio checkbox">
									<form:radiobutton name="status" path="estado" value="true"
										checked="checked" />
									<label>Activo</label>
								</div>
							</div>
							<div class="field">
								<div class="ui radio checkbox">
									<form:radiobutton name="status" path="estado" value="false" />
									<label>No Activo</label>
								</div>
							</div>
						</div>
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
		</div>
	</div>
</body>
</html>