<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Ejercicio 8</title>
</head>
<body>

	<h1>Interior de Coche</h1>

    <form method="post" action="MostrarCoche.jsp">
        <label>Color de la tapicería</label>
        <select name="tapiceria" required>
            <option>Blanco</option>
            <option>Negro</option>
            <option>Berenjena</option>
        </select>
        <br>

        <label>Material de las molduras</label>
        <select name="molduras" required>
            <option>Madera</option>
            <option>Carbono</option>
        </select>
        <br>

        <input id="botonEnviar" type="submit">
    </form>

</body>
</html>