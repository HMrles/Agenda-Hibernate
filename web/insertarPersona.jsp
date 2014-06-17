<%-- 
    Document   : insertarPersona
    Created on : 16/06/2014, 11:55:19 AM
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
        <title>Insertar Persona</title>
    </head>
    <body>
    <center>
        <h1>Formulario de Personas</h1>
        <jsp:useBean id="person" class="com.model.bean.Persona"/>
        <jsp:useBean id="dao" class="com.model.dao.PersonaDAO"/>
        <fieldset style="width: 280px">
            <legend align="center" > <big> <b>Datos de la persona</b> </big> </legend>
            <form  action="insertarPersona.jsp" method="POST" >
                <table>
                    <tr><td>Rut</td><td> <input type="text" name="ru" value="${param.ru}" size="20"> </td></tr>
                    <tr><td>Nombre</td><td> <input type="text" name="nom" value="${param.nom}" size="20"> </td></tr>
                    <tr><td>Telefono</td><td> <input type="text" name="tel" value="${param.tel}" size="20"> </td></tr>
                    <tr><td>Celular</td><td> <input type="text" name="cel" value="${param.cel}" size="20"> </td></tr>    
                    <tr><td>Email</td><td> <input type="text" name="em" value="${param.em}" size="20"> </td></tr>
                    <tr><td colspan="2" align="right"><input type="submit" name="bt" value="Agregar" /></td></tr>
                    <tr><td colspan="2" align="center"><a href="index.jsp">Volver</a> </td> </tr>
                </table>
                <c:choose>
                    <c:when test="${not empty param.ru && not empty param.nom && not empty param.tel 
                                    && not empty param.cel && not empty param.em && not empty param.bt}">
                        <fmt:parseNumber var="tel" integerOnly="true" type="number" value="${param.tel}"/>
                        <fmt:parseNumber var="cel" integerOnly="true" type="number" value="${param.cel}"/>
                        <jsp:setProperty name="person" property="rut" value="${param.ru}"/>
                        <jsp:setProperty name="person" property="nombre" value="${param.nom}"/>
                        <jsp:setProperty name="person" property="fijo" value="${param.tel}"/>
                        <jsp:setProperty name="person" property="celular" value="${param.cel}"/>
                        <jsp:setProperty name="person" property="email" value="${param.em}"/>
                        <font color="green"> <c:out value="Persona insertada ${dao.insertar(person)}"/></font>
                    </c:when>
                    <c:when test="${empty param.bt}">                            
                    </c:when>
                    <c:otherwise>
                        <font color="red"> <c:out value="Falta llenar campos" /></font>
                    </c:otherwise>
                </c:choose>    
            </form>
        </fieldset>
    </center>
</body>
</html>
