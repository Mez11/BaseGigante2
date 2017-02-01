<%-- 
    Document   : index
    Created on : Apr 29, 2016, 8:45:27 PM
    Author     : juanma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    String result = (String) request.getAttribute("RESULT");

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>Enviar Mensaje:</div>

        <br>

        <%            if (result != null) {%>
        <textarea> <%=result%> </textarea>
        <%            }%>

        <form action="./SendNotificationServlet">

            <input name="title" placeholder="Título">

            <br>
            <br>

            <input name="message" placeholder="Mensaje">

            <br>
            <br>

            <button>Enviar</button>

        </form>

    </body>
</html>
