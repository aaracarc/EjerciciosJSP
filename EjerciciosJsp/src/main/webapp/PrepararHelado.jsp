<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="EstilosHelado.css">
<title>Helado</title>
</head>
<body>

	<%
    // Recoger los porcentajes de helado
    int chocolate = Integer.parseInt(request.getParameter("chocolate"));
    int fresa = Integer.parseInt(request.getParameter("fresa"));
    int vainilla = Integer.parseInt(request.getParameter("vainilla"));

    // Si la suma de los porcentajes es mayor a 100...
    if (chocolate + fresa + vainilla > 100) {
    	
    %>
    <!-- ...Se muestra un mensaje -->
    <p>La suma de los porcentajes debe ser menor o igual a 100. Por favor, introduzca de nuevo los porcentajes.</p>
    
    <%
    } else {
    %>
    
	<h1>Aquí tiene su tarrina de helado</h1>
    <div class="tarrina">
        <div class="sabor hueco" style="height: <%= 100 - (chocolate + fresa + vainilla) %>%;"></div>
        <div class="sabor chocolate" style="height: <%= chocolate %>%;"><%= (chocolate == 0) ? "" : "Chocolate " + chocolate + "%" %></div>
        <div class="sabor fresa" style="height: <%= fresa %>%;"><%= (fresa == 0) ? "" : "Fresa " + fresa + "%" %></div>
        <div class="sabor vainilla" style="height: <%= vainilla %>%;"><%= (vainilla == 0) ? "" : "Vainilla " + vainilla + "%" %></div>
    </div>
    <%
    }
    %>

</body>
</html>