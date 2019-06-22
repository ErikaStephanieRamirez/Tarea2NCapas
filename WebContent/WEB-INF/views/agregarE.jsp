<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empleado</title>
</head>
<body>

	<h2>Nuevo Empleado</h2>

	<form:form action="${pageContext.request.contextPath}/GuardarEmpl" method="POST" modelAttribute="empleado">
		
		<form:input TYPE="Hidden" name="id" path="idEmpleado"/>
		
		<form:input TYPE="Hidden" name="id2" path="idSucursal"/>
		
		<label>Nombre del Empleado: </label>
		<form:input type="text" name="nombreE" path="NombreE" />
		<form:errors path="NombreE" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>Edad del empleado: </label>
		<form:input type="Number" name="edad" path="Edad" />
		<form:errors path="Edad" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>G&eacute;nero del empleado: </label><br>
		<form:radiobutton name="gender" path="genero" value="Masculino"/><label>Masculino</label><br>
		<form:radiobutton name="gender" path="genero" value="Femenino"/><label>Femenino</label><br>
		
		<label>Estado del empleado: </label><br>
		<form:radiobutton name="status" path="estado" value="true"/><label>Activo</label><br>
		<form:radiobutton name="status" path="estado" value="false"/><label>No Activo</label><br>

		<input type="submit" value="Guardar">
              
	</form:form>
	
</body>
</html>