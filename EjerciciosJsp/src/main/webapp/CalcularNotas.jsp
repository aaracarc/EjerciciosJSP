<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Calculo de Media</title>
</head>
<body>

	<%
	//Recoge los parámetros del formulario
	double nota1 = Double.parseDouble(request.getParameter("nota1"));
	double nota2 = Double.parseDouble(request.getParameter("nota2"));
	double nota3 = Double.parseDouble(request.getParameter("nota3"));
	
	//Calcula la media
	double media = (nota1 + nota2 + nota3) / 3;
	double mediaRedondeada = Math.round(media * 100.0) / 100.0;
	%>
    <h1>Media: <%= mediaRedondeada %></h1>
    
</body>
</html>