<%-- 
    Document   : conexion
    Created on : 30 jul 2023, 21:30:19
    Author     : Marcos del Carmen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection conn = null;
            try {
                // Intentamos obtener una conexión usando el método de la clase Conexion
                conn = conexion.Conexion.getConexion();
                out.println("¡Conexión exitosa a la base de datos!");
            } catch (SQLException e) {
                out.println("Error al conectar a la base de datos: " + e.getMessage());
            } finally {
                // Cerramos la conexión si se abrió exitosamente
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException e) {
                        out.println("Error al cerrar la conexión: " + e.getMessage());
                    }
                }
            }
        %>

        <label>Selecciona un cuatrimestre</label>
        <select id="tfCuatrimestre" name="tfCuatrimestre">
            <option selected>-Cuatrimestre-</option>
            <option value="1">1ro cuatrimestre</option>
            <option value="2">2do cuatrimestre</option>
            <option value="3">3ro cuatrimestre</option>
            <option value="4">4to cuatrimestre</option>
            <option value="5">5to cuatrimestre</option>
            <option value="6">6to cuatrimestre</option>
            <option value="7">7mo cuatrimestre</option>
            <option value="8">8vo cuatrimestre</option>
            <option value="9">9no cuatrimestre</option>
            <option value="10">10mo cuatrimestre</option>
            <option value="11">11vo cuatrimestre</option>
        </select>
    </body>
</html>
