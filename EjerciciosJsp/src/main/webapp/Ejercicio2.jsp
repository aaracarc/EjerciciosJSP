<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 2</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>

    <h1>Formulario de Idiomas</h1>

    <form method="post" action="Saludo.jsp" >
        <label>Nombre</label>
        <input type="text" name="nombre" required><br>

        <label>Idioma</label>
        <select name="idioma" required>
            <option >Español</option>
            <option >Portugués</option>
            <option >Inglés</option>
        </select><br>

        <input id="botonEnviar" type="submit">
    </form>

</body>
</html>