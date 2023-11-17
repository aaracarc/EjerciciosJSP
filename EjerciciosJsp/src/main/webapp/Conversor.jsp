<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Conversor</title>
</head>
<body>

	<%
	final double valorDolar = 0.92;
	
	//Recoge la cantidad de dólares del formulario
	double dolares = Double.parseDouble(request.getParameter("dolares"));
	
	//Realiza la conversión a euros
	double euros = dolares * valorDolar;
	double eurosRedondeados = Math.round(euros * 100.0) / 100.0;
	%>

	<h1>Dólares: <%= dolares %></h1>
	<h1>Euros: <%= eurosRedondeados %></h1>

</body>
</html>