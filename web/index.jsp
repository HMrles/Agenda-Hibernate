<%-- 
    Document   : index
    Created on : 4/06/2014, 04:17:58 PM
    Author     : Hugo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/estilos.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title >Agenda de contactos</title>
    </head>
    <body>
        <h1> Agenda de Contactos </h1>
    <center>
        <fieldset style="width: 250px"  >
            <legend align="center"><big><b>Menu</b></big> </legend>
            <table align="center">
                <tr><td>1</td><td><a href="insertarPersona.jsp">Ingresar Contacto</a></td></tr>
                <tr><td>2</td><td><a href="borrarPersona.jsp">Eliminar Contacto</a></td></tr>
                <tr><td>3</td><td><a href="actualizarPersona.jsp">Modificar Contacto</a></td></tr>
                <tr><td>4</td><td><a href="verPersona.jsp">Ver Contactos</a></td></tr>
            </table>
        </fieldset>
    </center>
    </body>
</html>
