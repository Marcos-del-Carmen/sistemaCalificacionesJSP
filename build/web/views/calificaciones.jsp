<%-- 
    Document   : calificaciones
    Created on : 26 jul 2023, 18:34:46
    Author     : Marcos del Carmen
--%>

<%@page import="beans.Calificaciones"%>
<%@page import="java.util.*"%>
<%@page import="dao.CalificacionesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calificaciones</title>
        <jsp:include page="../components/estilos.jsp" />
    </head>
    <body>
        <jsp:include page="../components/menu.jsp" />
        <div class="contenido">
            <div class="cont-tabla-alumnos">
                <table>
                    <thead>
                        <tr>
                            <th>Matricula</th>
                            <th>Nombre completo</th>
                            <th>Nombre de materia</th>
                            <th>Parcial 1</th>
                            <th>Parcial 2</th>
                            <th>Parcial 3</th>
                            <th>Promedio</th>
                            <th>Extraordinario</th>
                        </tr>
                    </thead> 
                    <tbody>
                        <%                        
                            CalificacionesDAO calificacionesDao = new CalificacionesDAO();
                            List<Calificaciones> calificaciones = calificacionesDao.mostrar();
                            for (Calificaciones calificacion : calificaciones) {
                        %>
                        <tr>
                            <td><%= calificacion.getMatricula()%></td>
                            <td><%= calificacion.getNombreCompleto() %></td>
                            <td><%= calificacion.getNombreMat() %></td>
                            <td><%= calificacion.getP1() %></td>
                            <td><%= calificacion.getP2() %></td>
                            <td><%= calificacion.getP3() %></td>
                            <td><%= calificacion.getProm() %></td>
                            <td><%= calificacion.getExtra() %></td>
                            
                            <!--
                            <td><a href="SvMenu?accion=editarM&matricula=< %= alumno.getMatricula() %>">Editar</a></td>
                            <td><a href="SvMenu?accion=eliminarM&matricula=< %= alumno.getMatricula() %>">Eliminar</a></td>
                            -->
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <jsp:include page="../components/scripts.jsp" />
    </body>
</html>
