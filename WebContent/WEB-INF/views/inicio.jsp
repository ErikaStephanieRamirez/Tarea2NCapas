<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicio</title>
</head>
<body>

	<form name="agregar" action="${pageContext.request.contextPath}/AgregarS" method="post">
    	<INPUT TYPE="Submit" VALUE="Agregar Sucursal">
    </form>
   
	<table border="1">
    
       <c:forEach items="${sucursal}" var="sucursal">
         <tr>
           <th>${sucursal.nombreS}</th>
           
           <th><form  name="form1" action="${pageContext.request.contextPath}/PerfilS" method="post">
            <INPUT type="Hidden" name="id_sucursal" value=${sucursal.idSucursal}>
            <INPUT type="Submit" value="Ver Perfil">
           </form></th>
           
           <th><form  name="form2" action="${pageContext.request.contextPath}/EditarS" method="post">
            <INPUT type="Hidden" name="id_sucursal" value=${sucursal.idSucursal}>
            <INPUT type="Submit" value="Editar">
           </form></th>
           
           <th><form  name="form3" action="${pageContext.request.contextPath}/EliminarS" method="post">
            <INPUT type="Hidden" name="id_sucursal" value=${sucursal.idSucursal}>
            <INPUT type="Submit" value="Borrar">
           </form></th>
            
       </tr>
       </c:forEach>
       
  </table>
</body>
</body>
</html>

