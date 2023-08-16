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
                            <!-- <label>CUATRIMESTRE</label>
                            <input type='text' class='controls' name='tfCuatrimestre'> -->

                            <label>Selecciona un cuatrimestre</label>
                            <select id="tfCuatrimestre" name="tfCuatrimestre">
                                <option selected>-Cuatrimestre-</option>
                                <option value="1ro">1ro</option>
                                <option value="2do">2do</option>
                                <option value="3ro">3ro</option>
                                <option value="4to">4to</option>
                                <option value="5to">5to</option>
                                <option value="6to">6to</option>
                                <option value="7mo">7mo</option>
                                <option value="8vo">8vo</option>
                                <option value="9no">9no</option>
                                <option value="10mo">10mo</option>
                                <option value="11vo">11vo</option>
                            </select>
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
