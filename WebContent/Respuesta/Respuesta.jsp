<%@page import="mx.ipn.web.dao.Respuesta"%>
<%@page import="java.util.List"%>
<%@page import="mx.ipn.web.factory.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@page import="mx.ipn.web.dao.orm.RespuestaDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
 List<Respuesta> respuestas = new RespuestaDAOImpl().loadAll(ConnectionFactory.getConnection());

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DAO Respuesta</title>
</head>
<body>
<table border ='2'>
<tr>
<td  width= 50>resultado</td>
<td width = 50>correcto</td>
</tr>
</table>
<%
for(Respuesta respuesta:respuestas){
	out.println("<table border ='2'>");
	out.println("<td width = 73.5 ALIGN=CENTER>"+respuesta.getCorrecto()+"</td>"); //Este es un byte How make it??
	out.println("<td width= 73.5 ALIGN=CENTER>"+respuesta.getResultado()+"</td>");
	out.println("</table>");
	}
%>
</body>
</html>