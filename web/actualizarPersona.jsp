<%-- 
    Document   : actuaalizarPersona
    Created on : 16/06/2014, 03:18:53 PM
    Author     : Hugo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>Eliminar Persona</title>
    </head>
    <body >
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
                            <c:url value='formModificar.jsp' var="url">
                                <c:param name="id" value="${person.id}"/>
                                <c:param name="rut" value="${person.rut}"/>
                                <c:param name="nombre" value="${person.nombre}"/>
                                <c:param name="fijo" value="${person.fijo}"/>
                                <c:param name="celular" value="${person.celular}"/>
                                <c:param name="email" value="${person.email}"/>
                            </c:url>
                            <a href='<c:out value="${url}"/>'>Modificar</a>
                        </td>
                    </tr>
                </c:forEach>
            <td colspan="6" align='center'> <a href="index.jsp"> volver</a></td>
            </tbody>
        </table>
    </center>
</body>
</html>