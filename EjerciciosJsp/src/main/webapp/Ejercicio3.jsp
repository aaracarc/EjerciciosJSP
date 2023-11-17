<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Ejercicio 3</title>
</head>
<body>

	<h1>Calcular Media de Notas</h1>

    <form method="post" action="CalcularNotas.jsp">
    
        <label>Nota 1</label>
        <input type="text" name="nota1" title="Número de hasta 2 decimales. De 0 a 10" pattern="^(?:10|\d(\.\d{1,2})?)$" required><br>

        <label>Nota 2</label>
        <input type="text" name="nota2" title="Número de hasta 2 decimales. De 0 a 10" pattern="^(?:10|\d(\.\d{1,2})?)$" required><br>

        <label>Nota 3</label>
        <input type="text" name="nota3" title="Número de hasta 2 decimales. De 0 a 10" pattern="^(?:10|\d(\.\d{1,2})?)$" required><br>

        <input id="botonEnviar" type="submit">
        
    </form>
    
</body>
</html>