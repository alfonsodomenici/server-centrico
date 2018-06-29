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
                        <c:forEach begin="1" end="100" var="idx" >
                            <tr>
                                <td>01</td>
                                <td>iphone</td>
                                <td>100</td>
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
            <div class="row verde">
                <div class="col-sm-6">contenitore 1</div>
                <div class="col-sm-6">contenitore 2</div>
            </div>
            <div class="row verde">
                <div class="col-sm-4">contenitore 1</div>
                <div class="col-sm-4">contenitore 2</div>
                <div class="col-sm-4">contenitore 2</div>
            </div>
        </div>

    </body>
</html>
