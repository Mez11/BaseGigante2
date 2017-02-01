<%@page import="mx.ipn.web.dao.Pregunta"%>
<%@page import="java.util.List"%>
<%@page import="mx.ipn.web.factory.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@page import="mx.ipn.web.dao.orm.PreguntaDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	List<Pregunta> preguntas = new PreguntaDAOImpl().loadAll(ConnectionFactory.getConnection());
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pregunta DAO</title>
</head>
<body>
<table >
<tr>
<th >Pregunta</th>
</tr>
</table>
<% 
if( preguntas == null || preguntas.isEmpty() ){
	out.println( "<h1>no hay preguntas ;)  @.@</h1>" );
}
else{	
	for(Pregunta pregunta:preguntas){
		out.println("<table border =1>");
		out.println("<tr>"+pregunta.getPregunta() + "</tr>");
		out.println("</table>");
	}
}
%>
</body>
</html>