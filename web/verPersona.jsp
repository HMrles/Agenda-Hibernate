<%-- 
    Document   : verPersona
    Created on : 16/06/2014, 03:04:33 PM
    Author     : Hugo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>Ver Personas</title>
    </head>
    <body>
    <center>
        <h1>Personas registradas</h1>
        <jsp:useBean id="dao" class="com.model.dao.PersonaDAO"/>
        <table border='1' id="tabla">
            <thead>
                <tr>
                    <th>Rut</th>
                    <th>Nombre</th>
                    <th>Telefono</th>
                    <th>Celular</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="person" items="${dao.leer()}">
                    <tr>
                        <td><c:out value="${person.rut}"></c:out></td>
                        <td><c:out value="${person.nombre}"></c:out></td>
                        <td><c:out value="${person.fijo}"></c:out></td>
                        <td><c:out value="${person.celular}"></c:out></td>
                        <td><c:out value="${person.email}"></c:out></td>
                        </tr>
                </c:forEach>

                <tr><td colspan="5" align="center"><a href="index.jsp">Volver</a></td></tr>   
            </tbody>
        </table>

    </body>
</center>
</html>
