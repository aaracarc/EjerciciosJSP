<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Ejercicio 4</title>
</head>
<body>

	<h1>Conversor de Dólares a Euros</h1>

    <form method="post" action="Conversor.jsp">
        <label>Dólares</label>
        <input type="text" name="dolares" required pattern="\d+(\.\d{1,2})?" title="Número de hasta 2 decimales"><br>

        <input id="botonEnviar" type="submit">
    </form>
    
</body>
</html>