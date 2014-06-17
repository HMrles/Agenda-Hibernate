<%-- 
    Document   : borrarPersona
    Created on : 16/06/2014, 01:26:18 PM
    Author     : Hugo
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>Eliminar Persona</title>
    </head>
    <body>
    <center>
        <h1> Personas Registradas</h1>
        <jsp:useBean id="dao" class="com.model.dao.PersonaDAO"/>
        <table border='1' id="tabla">
            <thead>
                <tr>
                    <th>Rut</th>
                    <th>Nombre</th>
                    <th>Telefono</th>
                    <th>Celular</th>
                    <th>Email</th>
                    <th> </th>
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
                            <td>
                            <c:url value="borrarPersona2.jsp" var="url">
                                <fmt:parseNumber var="id" integerOnly="true" type="number" value="${param.id}"/>
                                <c:param name="id" value="${person.id}"/> 
                            </c:url>
                            <a href="<c:out value="${url}"/>">Eliminar</a> </td>
                    </tr>                    
                </c:forEach>
                <tr><td colspan="7" align="center"><a href="index.jsp">Volver</a></td></tr>                        
            </tbody>
        </table>
        <font color="green"><c:out value="${param.msg}"/></font>
        </center>
    </body>
</html>
