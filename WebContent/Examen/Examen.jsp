<%@page import="mx.ipn.web.dao.Examen"%>
<%@page import="java.util.List"%>
<%@page import="mx.ipn.web.factory.ConnectionFactory"%>
<%@page import="mx.ipn.web.dao.orm.ExamenDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
 List<Examen> examenes =  new ExamenDAOImpl().loadAll(ConnectionFactory.getConnection());

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Examen</title>
</head>
<body>
<table border =1 >
<tr>
<td>periodo </td>
<td width =88>fecha </td>
</tr>
</table>
<% 
for(Examen examen: examenes){
	out.println("<table border =1>");
	out.println("<td width=60>"+examen.getPeriodo()+"</td>");
	out.println("<td>"+examen.getFecha()+"</td>");
	out.println("</table>");
	
}
%>
</body>
</html>