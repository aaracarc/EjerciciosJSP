<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Coche</title>
</head>
<body>

	<h1>Interior de Coche</h1>

    <%
    // Recoge los datos del formulario
    String tapiceria = request.getParameter("tapiceria");
    String molduras = request.getParameter("molduras");
    %>

    <div class="coche">
        <div class="interior <%= "tapiceria-" + tapiceria %> <%= "molduras-" + molduras %>"></div>
    </div>

    <p>Color de la tapicería: <%= tapiceria %></p>
    <p>Material de las molduras: <%= molduras %></p>

</body>
</html>