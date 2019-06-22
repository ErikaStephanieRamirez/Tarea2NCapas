<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil sucursal</title>
</head>
<body>
	<h1>${sucursal.nombreS}</h1>

	<br>
	<table border="1">
		<tr>
			<th>Nombre</th>
			<th>Hora Apertura</th>
			<th>Hora Cierre</th>
			<th>Ubicacion</th>
			<th>Numero de Mesas</th>
			<th>Nombre de Gerente</th>
		</tr>

		<tr>
			<th>${sucursal.nombreS}</th>
			<th>${sucursal.horaA}</th>
			<th>${sucursal.horaC}</th>
			<th>${sucursal.ubicacion}</th>
			<th>${sucursal.nMesas}</th>
			<th>${sucursal.nomGerente}</th>
		</tr>
	</table>
	<br>
	<br>

	<table border="1">
		<tr>
			<th>Nombre</th>
			<th>Edad</th>
			<th>Genero</th>
			<th>Estado</th>
		</tr>
		<c:forEach items="${empleado}" var="empleado">
			<tr>
				<th>${empleado.nombreE}</th>
				<th>${empleado.edad}</th>
				<th>${empleado.genero}</th>
				<th>${empleado.estadoE}</th>
				<th><form name="edit" action="${pageContext.request.contextPath}/EditarE" method="post">
						<INPUT TYPE="Hidden" NAME="id_empleado" value=${empleado.idEmpleado}>
						<INPUT TYPE="Submit" VALUE="Editar Empleado">
					</form></th>
				<th><form name="Borrar" action="${pageContext.request.contextPath}/BorrarE" method="post">
						<INPUT TYPE="Hidden" NAME="id_empleado" value=${empleado.idEmpleado}>
						<INPUT TYPE="Submit" VALUE="Borrar Empleado">
					</form></th>
			</tr>
		</c:forEach>
	</table>
	<br>

	<form name="add" action="${pageContext.request.contextPath}/AgregarE"
		method="post">
		<INPUT TYPE="Hidden" NAME="id" value=${sucursal.idSucursal}> 
		<INPUT TYPE="Submit" VALUE="Agregar Empleado">
	</form>
	<br>
	<form:form id="form" method="POST" action="${pageContext.request.contextPath}/volver">
	<input type="submit" value="Volver" />
	</form:form>
</body>
</html>