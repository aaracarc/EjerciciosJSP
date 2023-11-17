<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Ejercicio 6</title>
</head>
<body>

	<h1>Tabla de Multiplicar</h1>
	
    <form method="post" action="MostrarTabla.jsp">
        <label>Número:</label>
        <input type="number" name="numero" required title="Número entero"><br>

        <input id="botonEnviar" type="submit">
    </form>
    
</body>
</html>