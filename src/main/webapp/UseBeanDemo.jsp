<%-- 
    Document   : BeanUseDemo
    Created on : Jan 1, 2018, 8:28:05 PM
    Author     : Akhilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.akhilesh.webapp.entity.Customer" %>
<jsp:useBean id="customer" class="com.akhilesh.webapp.entity.Customer" scope="session" />
<jsp:setProperty name="customer" property="id" value="1"/>
<jsp:setProperty name="customer" property="firstName" value="Akhilesh" />
<jsp:setProperty name="customer" property="lastName" value="Khapangee" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <h1><jsp:getProperty name="customer" property="id" /></h1>
        <h1><jsp:getProperty name="customer" property="firstName" /></h1>
        <h1><jsp:getProperty name="customer" property="lastName" /></h1>
    </body>
</html>
