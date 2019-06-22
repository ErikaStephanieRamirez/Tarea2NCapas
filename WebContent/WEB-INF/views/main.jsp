<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Iniciar Sesion</title>
</head>
<body>

	<h1>Iniciar Sesi&oacute;n</h1>

	<form:form id="form" method="POST"
		action="${pageContext.request.contextPath}/inicio"
		ModelAttribute="Usuario">

		<label>Correo: </label>

		<input type="text" name="uusuario" placeholder="usuario@gmail.com"
			path="uusuario" />
		<form:errors path="uusuario"></form:errors>

		<br>
		<br>

		<label>Contraseña: </label>

		<input type="password" name="uclave" placeholder="Contraseña"
			path="uclave" />
		<form:errors path="uclave"></form:errors>
		<br>
		<br>

		<input type="submit" value="Entrar" />
		${message}
	</form:form>


</body>
</html>