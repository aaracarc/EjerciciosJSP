<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Saludo</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>

	<%
	// Recoge los parámetros del formulario
	String nombre = request.getParameter("nombre");
	String idioma = request.getParameter("idioma");
	
	String saludo = "";
	
	switch (idioma) {
		case "Español":
		    saludo = "Hola";
		    break;
		case "Portugués":
		    saludo = "Olá";
		    break;
		case "Inglés":
		    saludo = "Hello";
		    break;
		default:
		    saludo = "Idioma no soportado";
	}
	%>
	<p><%= saludo + " " + nombre%></p>
	
</body>
</html>