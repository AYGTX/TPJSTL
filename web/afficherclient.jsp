<%-- 
    Document   : afficherclient
    Created on : Nov 5, 2020, 1:08:11 PM
    Author     : wael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2> Nom client = ${client.nom}</h2>
        <h2> Prénom client = ${client.prenom}</h2>
        <h2> Adresse client = ${client.adresse}</h2>
        <h2> Telephone client = ${client.telephone} </h2>
        <h2> Email client = ${client.email}</h2>
</html>
