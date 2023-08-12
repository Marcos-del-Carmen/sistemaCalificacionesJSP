<%-- 
    Document   : materiasEditar
    Created on : 11 ago 2023, 15:32:46
    Author     : Marcos del Carmen
--%>

<%@page import="beans.Materias"%>
<%@page import="dao.MateriasDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar materia</title>
    </head>
    <body>
        
        <%
            MateriasDAO dao = new MateriasDAO();
            String claveMateria = request.getAttribute("claveMateria").toString();
            Materias materia = dao.buscar(claveMateria);
        %>
        
        <div class="contenido">
            <div class='form-register'>
            <form action="SvMenu" method='post' id='formulario'>
                <div class='form-group'>
                    <input type="hidden" name="tfClaveMateriaOld" value="<%=materia.getClaveMateria()%>">
                </div>
                <div class='form-group'>
                    <label for='lblMatricula'>Clave de materia</label>
                    <input type='text' class='controls' name='tfClaveMateria' value = "<%= materia.getClaveMateria()%>">
                </div>
                <div class="row">
                    <div class='col-4'>

                        <label for='lblNombre'>Nombre</label>
                        <input type='text' class='controls' name='tfNombre' value = "<%= materia.getNombre()%>">
                    </div>
                    <div class='col-4'>
                        <label for='lblApellidoPaterno'>Cuatrimestre</label>
                        <input type='text' class='controls' name='tfCuatrimestre' value = "<%= materia.getCuatrimestre()%>">
                    </div>
                    <!--<button type='submit' class='botons' name='accion' value="actualizar">Actualizar</button>-->
                    <button type="submit" class="botons" name="btnActulizarMateria">Actualizar </button>
                    <a class="fcc-btn" href="SvMenu">Regresar</a>  
                    
                </div>
            </form>
        </div> 
        </div>
    </body>
</html>
