<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Ejercicio 7</title>
</head>
<body>

	<h1>Generar Calendario</h1>

    <form method="post" action="GenerarCalendario.jsp">
        <label>Mes</label>
        <input type="text" name="mes" pattern="(enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre)" title="Mes del año en minúsculas" required><br>

        <label>Año</label>
        <input type="number" name="año" min="0" max="9999" required><br>

        <input id="botonEnviar" type="submit">
    </form>
    
</body>
</html>