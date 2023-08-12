<%-- 
    Document   : alumnos
    Created on : 26 jul 2023, 18:34:17
    Author     : Marcos del Carmen
--%>

<%@page import="beans.Alumnos"%>
<%@page import="java.util.*"%>
<%@page import="dao.AlumnosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    AlumnosDAO alumnoDao = new AlumnosDAO();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos</title>
        <jsp:include page="../components/estilos.jsp" />
    </head>
    <body>
        <jsp:include page="../components/menu.jsp" />
        <div class="contenido">
            
            <h3>Ingresa a un alumno</h3>
            
            <div class="cont-form-alumnos">
                <form action="SvMenu" method="POST">
                    <div class="cont-input">
                        <label for="">Matricula</label>
                        <br>
                        <input type="text" name="tfMatricula">
                    </div>
                    <div class="cont-input">
                        <label for="">Nombre</label>
                        <br>
                        <input type="text" name="tfNombre">
                    </div>
                    
                    <div class="cont-input">
                        <label>Apellido paterno</label>
                        <br>
                        <input type="text" name="tfPaterno">
                    </div>
                    
                    <div class="cont-input">
                        <label>Apellido materno</label>
                        <br>
                        <input type="text" name="tfMaterno">
                    </div>
                    
                    <div class="cont-input">
                        <label>Sexo</label>
                        <br>
                        <input type="text" name="tfSexo">
                    </div>
                    
                    <div class="cont-input">
                        <label>Fecha de nacimiento</label>
                        <br>
                        <input type="date" name="tfFechaNac">
                    </div>
                    
                    <div class="cont-input">
                        <label>Telefono</label>
                        <br><
                        <input type="text" name="tfTelefono">
                    </div>
                    
                    <div class="cont-input">
                        <label>Correo</label>
                        <br>
                        <input type="email" name="tfCorreo">
                    </div>
                    
                    <div class="cont-input">
                        <label>Dirección</label>
                        <br>
                        <input type="text" name="tfDireccion">
                    </div>
                    
                    <input type="submit" name="btnAlumnoNuevo" value="Guardar registro"/>
                </form>
            </div>
            
            <div class="cont-tabla-alumnos">
                <table>
                    <thead>
                        <tr>
                            <th>Matricula</th>
                            <th>Nombre</th>
                            <th>Paterno</th>
                            <th>Materno</th>
                            <th>Sexo</th>
                            <th>Fecha de nacimiento</th>
                            <th>Telefono</th>
                            <th>Dirección</th>
                            <th>Correo</th>
                            <th colspan="2">Acciones</th>
                        </tr>
                    </thead> 
                    <tbody>
                        <%                        
                            // AlumnosDAO alumnoDao = new AlumnosDAO();
                            List<Alumnos> alumnos = alumnoDao.mostrar();
                            for (Alumnos alumno : alumnos) {
                        %>
                        <tr>
                            <td><%= alumno.getMatricula()%></td>
                            <td><%= alumno.getNombre()%></td>
                            <td><%= alumno.getPaterno()%></td>
                            <td><%= alumno.getMaterno()%></td>
                            <td><%= alumno.getSexo()%></td>
                            <td><%= alumno.getFechaNac()%></td>
                            <td><%= alumno.getTelefono()%></td>
                            <td><%= alumno.getDireccion()%></td>
                            <td><%= alumno.getCorreo()%></td>
                            <td><a href="SvMenu?accion=editar&matricula=<%= alumno.getMatricula() %>">Editar</a></td>
                            <td><a href="SvMenu?accion=eliminar&matricula=<%= alumno.getMatricula() %>">Eliminar</a></td>
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
