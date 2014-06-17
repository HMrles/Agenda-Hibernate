<%-- 
    Document   : formModificar
    Created on : 16/06/2014, 03:31:07 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario Persona</h1>
        <jsp:useBean id="person" class="com.model.bean.Persona"/>
        <jsp:useBean id="dao" class="com.model.dao.PersonaDAO"/>
        <form action="formModificar.jsp" method="POST">
            <input type="hidden" name="id" value="${param.id}"/>
            <table id="tabla">
                <tr><td>Rut</td><td><input type="text" name="rut" value="${param.rut}"/></td></tr>
                <tr><td>Nombre</td><td><input type="text" name="nombre" value="${param.nombre}"/></td></tr>
                <tr><td>Tel</td><td><input type="text" name="tel" value="${param.fijo}"/></td></tr>
                <tr><td>Cel</td><td><input type="text" name="cel" value="${param.celular}"/></td></tr>
                <tr><td>Email</td><td><input type="text" name="email" value="${param.email}"/></td></tr>
                <tr><td colspan="2" align='center'><input type="submit" name="bt" value="Actualizar"/></td></tr>
                <tr><td colspan="2" align='center' ><a href="index.jsp">Volver</a></td></tr>
            </table>
        </form>
        <c:choose>
            <c:when test="${not empty param.bt}">
                <fmt:parseNumber var="tel" integerOnly="true" type="number" value="${param.fijo}"/>
                <fmt:parseNumber var="cel" integerOnly="true" type="number" value="${param.celulars}"/>
                <jsp:setProperty name="person" property="id" value="${param.id}"/>
                <jsp:setProperty name="person" property="rut" value="${param.rut}"/>
                <jsp:setProperty name="person" property="nombre" value="${param.nombre}"/>
                <jsp:setProperty name="person" property="fijo" value="${param.fijo}"/>
                <jsp:setProperty name="person" property="celular" value="${param.celular}"/>
                <jsp:setProperty name="person" property="email" value="${param.email}"/>
                <font color="green"> <c:out value="Datos actializados ${dao.actualizar(person)}"/></font>

            </c:when>
        </c:choose>
    </body>
</html>
