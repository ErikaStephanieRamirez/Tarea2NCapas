<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar Sucursal</title>
</head>
<body>

	<h2>Nueva Sucursal</h2>
	
	<form:form action="${pageContext.request.contextPath}/NuevaS" method="POST" modelAttribute="sucursal">
		
		<form:input TYPE="Hidden" name="id" path="idSucursal"/>
		
		<label>Nombre de la sucursal: </label>
		<form:input type="text" name="nombreS" path="NombreS" /><br>
		<form:errors path="NombreS" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>Hora de apertura: </label>
		<form:input type="Time" name="horaA" path="HoraA" /><br>
		<form:errors path="HoraA" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>Hora de cierre: </label>
		<form:input type="Time" name="horaC" path="HoraC" /><br>
		<form:errors path="HoraC" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>Ubicaci&oacute;n: </label>
		<form:input type="text" name="ubicacion" path="Ubicacion" /><br>
		<form:errors path="Ubicacion" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>N&uacute;mero de mesas: </label>
		<form:input type="Number" name="nMesas" path="nMesas" /><br>
		<form:errors path="nMesas" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>Nombre Gerente: </label>
		<form:input type="text" name="nomGerente" path="nomGerente" /><br>
		<form:errors path="nomGerente" cssStyle="color:#E81505;"></form:errors><br>
		

		<input type="submit" value="Guardarl">
              
	</form:form>
	
	<form:form id="form" method="POST" action="${pageContext.request.contextPath}/volver">
	<input type="submit" value="Volver" />
	</form:form>
	
</body>
</html>