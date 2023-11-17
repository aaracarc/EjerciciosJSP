<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="EstilosHelado.css">
<title>Ejercicio 10</title>
</head>
<body>

	<h1>Máquina de helados</h1>
	<p>Seleccione los porcentajes para preapar un helado a su gusto.</p>

    <form method="post" action="PrepararHelado.jsp">
    	<div class="contenedor">
	    	<div class="contenedorIngredientes">
	            <img src="Chocolate.jpg"><br>
	            <label>Chocolate <input type="number" name="chocolate" min="0" max="100" required> %:</label>
	        </div>
	
	        <div class="contenedorIngredientes">
	            <img src="Fresa.jpg"><br>
	            <label>Fresa <input type="number" name="fresa" min="0" max="100" required> %:</label>
	        </div>
	
	        <div class="contenedorIngredientes">
	            <img src="Vainilla.jpg"><br>
	            <label>Vainilla <input type="number" name="vainilla" min="0" max="100" required> %:</label>
	        </div>
    	</div>
        
        <input type="submit" value="Preparar helado">
    </form>

</body>
</html>