<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<meta charset="ISO-8859-1">
<title>Iniciar Sesion</title>

<style type="text/css">
body {
	background-color: #f2f2f2;
}

body>.grid {
	height: 100%;
}

.image {
	margin-top: -100px;
}

.column {
	max-width: 450px;
}
</style>

<script>
  $(document)
    .ready(function() {
      $('.ui.form')
        .form({
          fields: {
            email: {
              identifier  : 'uusuario',
              rules: [
                {
                  type   : 'empty',
                  prompt : 'Por favor ingrese su correo'
                },
                {
                  type   : 'email',
                  prompt : 'Ingrese un correo válido'
                }
              ]
            },
            password: {
              identifier  : 'uclave',
              rules: [
                {
                  type   : 'empty',
                  prompt : 'Por favor ingrese su contraseña'
                },
                {
                  type   : 'length[4]',
                  prompt : 'Tu contraseña debe tener al menos 4 caracteres'
                }
              ]
            }
          }
        })
      ;
    })
  ;
  </script>

</head>
<body>

	<div class="ui middle aligned center aligned grid">
		<div class="column">
			
				<div class="content" style= "font-size: 40px;"><span class="ui teal image header">Iniciar Sesi&oacute;n</span></div>
			<br><br>
			<form:form class="ui large form" id="form" method="POST" action="${pageContext.request.contextPath}/inicio" ModelAttribute="Usuario">
				<div class="ui stacked segment">
					<div class="field">
						<div class="ui left icon input">
							<i class="user icon"></i> <input type="text" name="uusuario" placeholder="Correo Electr&oacute;nico" path="uusuario" >
						</div>
					</div>
					<div class="field">
						<div class="ui left icon input">
							<i class="lock icon"></i> <input type="password" name="uclave" placeholder="Contrase&ntilde;a">
							
						</div>
					</div>
					
					<input class="ui fluid large teal submit button" type="submit" value="Entrar" />
					<h3 style="color:#ff5447;">${message}</h3> 
					<div class="ui error message"> </div>
				</div>

			</form:form>

		</div>
	</div>

</body>
</html>
