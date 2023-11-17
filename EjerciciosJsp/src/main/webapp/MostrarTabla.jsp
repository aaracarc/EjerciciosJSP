<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Tabla de Multiplicar</title>
</head>
<body>

    <%
    // Recoge el número pedido en el formulario.
    int numero = Integer.parseInt(request.getParameter("numero"));
    %>

    <h1>Tabla de Multiplicar de <%= numero %></h1>

    <table>
        <%
        // Genera la tabla de multiplicar
        for (int i = 1; i <= 10; i++) {
            int resultado = numero * i;
        %>
        
        <tr>
            <td><%= i + " X " + numero%></td>
            <td><%= resultado %></td>
        </tr>
        
        <%
        }
        %>
    </table>
    
</body>
</html>