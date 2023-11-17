<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Ejercicio 9</title>
</head>
<body>

	<h1>Tablero de Ajedrez</h1>
	<h1 style="color:blue;">Caballo</h1>
	<h1 style="color:red;">Alfil</h1>

    <table>
        <%
            // Tamaño del tablero
            int filas = 8;
            int columnas = 8;

            // Posiciones aleatorias del alfil y el caballo
            int alfilFila = (int) (Math.random() * filas) + 1;
            int alfilColumna = (int) (Math.random() * columnas) + 1;

            int caballoFila, caballoColumna;
            // Repite el posicionamiento del caballo en caso de caer en el mismo sitio que el alfil
            do {
                caballoFila = (int) (Math.random() * filas) + 1;
                caballoColumna = (int) (Math.random() * columnas) + 1;
            } while (caballoFila == alfilFila && caballoColumna == alfilColumna);
        %>

        <!-- Encabezado de las columnas -->
        <tr>
            <td></td> <!-- Espacio en la esquina superior izquierda -->
            <%
                for (int i = 1; i <= columnas; i++) {
            %>
            <td><%= i %></td> <!-- Número de columna -->
            <%
                }
            %>
        </tr>

        <%
            for (int i = 1; i <= filas; i++) {
        %>
        <tr>
            <td><%= i %></td> <!-- Número de fila -->
            <%
                for (int j = 1; j <= columnas; j++) {
                    // Si la casilla actual es la posición del alfil o el caballo...
                    boolean esAlfil = (i == alfilFila && j == alfilColumna);
                    boolean esCaballo = (i == caballoFila && j == caballoColumna);
                    boolean esCeldaNegra = (i + j) % 2 != 0;
            %>
            <!-- ...Se le añade el estilo correspondiente -->
            <td id="celda" <%= esAlfil ? "class=\"alfil\"" : (esCaballo ? "class=\"caballo\"" : (esCeldaNegra ? "class=\"negra\"" : "")) %>></td>
            <%
                }
            %>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>