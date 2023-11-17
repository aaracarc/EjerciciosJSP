<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Calendario</title>
</head>
<body>

<%
        // Recoge los datos del formulario
        String nombreMes = request.getParameter("mes");
        int anio = Integer.parseInt(request.getParameter("año"));

        // Crea una instancia de Calendar
        Calendar calendario = Calendar.getInstance();

        // Configura el mes y el año
        calendario.set(Calendar.MONTH, obtenerNumeroMes(nombreMes));
        calendario.set(Calendar.YEAR, anio);

        // Configura el día al primer día del mes
        calendario.set(Calendar.DAY_OF_MONTH, 1);

        // Obtiene el primer día de la semana del mes
        int primerDiaSemana = calendario.get(Calendar.DAY_OF_WEEK);

        // Obtiene el número de días en el mes
        int numeroDiasMes = calendario.getActualMaximum(Calendar.DAY_OF_MONTH);
    %>
    
    <h1><%= nombreMes %> <%= anio %></h1>

    <table>
        <tr>
            <th>Domingo</th>
            <th>Lunes</th>
            <th>Martes</th>
            <th>Miércoles</th>
            <th>Jueves</th>
            <th>Viernes</th>
            <th>Sábado</th>
        </tr>

        <%
            // Llena los días anteriores al primer día del mes
            for (int i = Calendar.SUNDAY; i < primerDiaSemana; i++) {
        %>
        
        <td></td>

        <%
            }
            int diaSemana = primerDiaSemana;

            // Llena el calendario con los días del mes
            for (int dia = 1; dia <= numeroDiasMes; dia++) {
        %>

        <td><%= dia %></td>

        <%
                diaSemana++;
                if (diaSemana > Calendar.SATURDAY) {
        %>

        </tr>
        <tr>

        <%
                    diaSemana = Calendar.SUNDAY;
                }
            }

            // Completa los días restantes del último semana
            while (diaSemana <= Calendar.SATURDAY) {
        %>
        
        <td></td>

        <%
                diaSemana++;
            }
        %>
        
        </tr>
    </table>

    <%!
        // Obtiene el calendario del mes
        private int obtenerNumeroMes(String nombreMes) {
            switch (nombreMes.toLowerCase()) {
                case "enero":
                    return Calendar.JANUARY;
                case "febrero":
                    return Calendar.FEBRUARY;
                case "marzo":
                    return Calendar.MARCH;
                case "abril":
                    return Calendar.APRIL;
                case "mayo":
                    return Calendar.MAY;
                case "junio":
                    return Calendar.JUNE;
                case "julio":
                    return Calendar.JULY;
                case "agosto":
                    return Calendar.AUGUST;
                case "septiembre":
                    return Calendar.SEPTEMBER;
                case "octubre":
                    return Calendar.OCTOBER;
                case "noviembre":
                    return Calendar.NOVEMBER;
                case "diciembre":
                    return Calendar.DECEMBER;
                default:
                    return -1;
            }
        }
    %>
    
</body>
</html>