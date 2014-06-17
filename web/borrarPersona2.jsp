<%-- 
    Document   : borrarPersona2
    Created on : 16/06/2014, 02:46:52 PM
    Author     : Hugo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Personas Registradas</h1>
        <jsp:useBean id="dao" class="com.model.dao.PersonaDAO"></jsp:useBean>
        <c:set var="id" value="${param.id}"/>
        <c:out value="Persona eliminada ${dao.eliminar(id)}"/>
        <c:redirect url="borrarPersona.jsp"> 
            <c:param name="msg" value="Persona eliminada"></c:param>
        </c:redirect>
       
    </body>
</html>
