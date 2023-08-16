<%-- 
    Document   : alumnosEditar
    Created on : 12 ago 2023, 13:07:44
    Author     : Marcos del Carmen
--%>

<%@page import="beans.Alumnos"%>
<%@page import="dao.AlumnosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            AlumnosDAO dao = new AlumnosDAO();
            String matricula = request.getAttribute("matricula").toString();
            Alumnos alumno = dao.buscar(matricula);
        %>
        
        <div class="contenido">
            <div class='form-register'>
            <form action="SvMenu" method='post' id='formulario'>
                <div class='form-group'>
                    <input type="hidden" name="tfMatriculaOld" value="<%= alumno.getMatricula() %>">
                </div>
                <div class='form-group'>
                    <label for='lblMatricula'>Matricula</label>
                    <input type='text' class='controls' name='tfMatricula' value = "<%= alumno.getMatricula() %>">
                </div>
                <div class="row">
                    <div class='col-4'>

                        <label>Nombre</label>
                        <input type='text' class='controls' name='tfNombre' value = "<%= alumno.getNombre() %>">
                    </div>
                    <div class='col-4'>
                        <label>Paterno</label>
                        <input type='text' class='controls' name='tfPaterno' value = "<%= alumno.getPaterno() %>">
                    </div>
                    <div class='col-4'>
                        <label>Materno</label>
                        <input type='text' class='controls' name='tfMaterno' value = "<%= alumno.getMaterno() %>">
                    </div>
                    <div class='col-4'>
                        <label>Sexo</label>
                        <input type='text' class='controls' name='tfSexo' value = "<%= alumno.getSexo() %>">
                    </div>
                    <div class='col-4'>
                        <label>Fecha de nacimiento</label>
                        <input type='text' class='controls' name='tfFechaNac' value = "<%= alumno.getFechaNac() %>">
                    </div>
                    <div class='col-4'>
                        <label>Telefono</label>
                        <input type='text' class='controls' name='tfTelefono' value = "<%= alumno.getTelefono() %>">
                    </div>
                    <div class='col-4'>
                        <label>Dirección</label>
                        <input type='text' class='controls' name='tfDireccion' value = "<%= alumno.getDireccion() %>">
                    </div>
                    <div class='col-4'>
                        <label>Correo</label>
                        <input type='email' class='controls' name='tfCorreo' value = "<%= alumno.getCorreo() %>">
                    </div>
                    <!--<button type='submit' class='botons' name='accion' value="actualizar">Actualizar</button>-->
                    <button type="submit" class="botons" name="btnActulizarAlumno">Actualizar </button>
                    <a class="fcc-btn" href="SvMenu">Regresar</a>  
                    
                </div>
            </form>
        </div> 
        </div>
                    
    </body>
</html>
