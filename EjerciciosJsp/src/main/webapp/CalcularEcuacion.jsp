<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.math.MathContext" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Calculo Ecuación</title>
</head>
<body>

	<%
	// Recoge los coeficientes de la ecuación
	BigDecimal a = new BigDecimal(request.getParameter("a"));
	BigDecimal b = new BigDecimal(request.getParameter("b"));
	BigDecimal c = new BigDecimal(request.getParameter("c"));
	
	// Calculo del discriminante
	BigDecimal discriminante = b.pow(2).subtract(a.multiply(c).multiply(new BigDecimal("4")));
	
	// Verifica el signo del discriminante antes de calcular la raíz cuadrada
	if (discriminante.compareTo(BigDecimal.ZERO) >= 0) {
		
	    BigDecimal sqrtDiscriminante = discriminante.sqrt(new MathContext(10));
	    
	    BigDecimal divisor = a.multiply(new BigDecimal("2"));
	    
	    BigDecimal solucion1 = b.negate().add(sqrtDiscriminante).divide(divisor, new MathContext(10)).round(new MathContext(10));
	    BigDecimal solucion2 = b.negate().subtract(sqrtDiscriminante).divide(divisor, new MathContext(10)).round(new MathContext(10));
	%>
	
	<h1>Solución 1: <%= solucion1 %></h1>
	<h1>Solución 2: <%= solucion2 %></h1>
	
	<%
	} else {
	%>

	<h1>Discriminante: <%= discriminante %></h1>
	<h1>El discriminante es negativo</h1><%}%>

</body>
</html>