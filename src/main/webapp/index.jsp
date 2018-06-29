<%-- 
    Document   : index.jsp
    Created on : 22-giu-2018, 17.58.17
    Author     : alfonso
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Elenco prodotti</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <style>
            div.verde{
                border: black dashed thin;
                background: yellowgreen;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Codice</th>
                            <th>Descrizione</th>
                            <th>Prezzo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${pstore.findAll()}" var="p" >
                            <tr>
                                <td>${p.codice}</td>
                                <td>${p.descrizione}</td>
                                <td>${p.prezzo}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3" >
                                <input type="button" value="Refresh" />
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>  
            
        </div>

    </body>
</html>
