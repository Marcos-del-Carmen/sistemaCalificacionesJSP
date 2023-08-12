<%@page import="java.util.List"%>
<%@page import="beans.Materias"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MateriasDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="conexion.Conexion" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Materias</title>
        <jsp:include page="../components/estilos.jsp" />
    </head>
    <body>
        <jsp:include page="../components/menu.jsp" />
        <div class="contenido">         
            <div class="cont-entradas">
                <form action="SvMenu" method='post' id='formulario'>
                    <div >
                        <label>CLAVE DE MATERIA</label>
                        <input type='text' class='controls' name='tfClaveMat'>
                    </div>
                    <div >
                        <div>
                            <label>NOMBRE</label>
                            <input type='text' class='controls' name='tfNombre'>
                        </div>
                        <div >
                            <label>CUATRIMESTRE</label>
                            <input type='text' class='controls' name='tfCuatrimestre'>
                        </div>
                    </div>
                    <input type="submit" name="btnMateriaNueva" value="Guardar">
                </form>    
            </div>
            <table>
            <thead>
                <tr>
                    <th scope="col">Clave Materia</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Cuatrimestre</th>
                    <th colspan = "2">ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <%
                    MateriasDAO materiasDao = new MateriasDAO();
                    List<Materias> materias = materiasDao.mostrar();
                    for (Materias materia : materias) {
                %>

                <tr>
                    <td><%= materia.getClaveMateria()%></td>
                    <td><%= materia.getNombre()%></td>
                    <td><%= materia.getCuatrimestre()%></td>
                    <td><a href="SvMenu?accion=editar&claveMateria=<%= materia.getClaveMateria()%>">Editar</a></td>
                    <td><a href="SvMenu?accion=eliminar&claveMateria=<%= materia.getClaveMateria()%>">Eliminar</a></td>
                </tr>
                <%  }%>
            </tbody>
        </table>
        </div>
        <jsp:include page="../components/scripts.jsp" />
    </body>
</html>
