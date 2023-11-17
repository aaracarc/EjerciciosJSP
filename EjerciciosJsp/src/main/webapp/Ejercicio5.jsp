<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Ejercicio 5</title>
</head>
<body>

	<h1>Resolver Ecuación de Segundo Grado</h1>
	<p>ax<sup>2</sup> + bx + c = 0</p>

    <form method="post" action="CalcularEcuacion.jsp">
        <label for="a">a</label>
        <input type="text" name="a" required pattern="^-?\d+(\.\d+)?$" title="Número"><br>

        <label for="b">b</label>
        <input type="text" name="b" required pattern="^-?\d+(\.\d+)?$" title="Número"><br>

        <label for="c">c</label>
        <input type="text" name="c" required pattern="^-?\d+(\.\d+)?$" title="Número"><br>

        <input id="botonEnviar" type="submit">
    </form>
    
</body>
</html>