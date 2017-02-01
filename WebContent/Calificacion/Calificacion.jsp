<%@page import="mx.ipn.web.dao.Calificacion"%>
<%@page import="mx.ipn.web.factory.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@page import="mx.ipn.web.dao.orm.CalificacionDAOImpl"%>
<%@page import="mx.ipn.web.dao.dao.CalificacionDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	List<Calificacion> calificaciones = new CalificacionDAOImpl().loadAll(ConnectionFactory.getConnection());

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calificacion DAO</title>
</head>
<body>
<table border=1>
<tr>
<th>Calificacion</th>
<th >alumno</th>
</tr>
</table>
<%
for(Calificacion calificacion : calificaciones){
	out.println("<table border =1>");
	out.println("<td with=700>" + calificacion.getCalificacion() + "</td>");
	out.println( "<td with=700>" + calificacion.getIdalumno() + "</td>" );
	out.println("</table>");
	}
%>
</body>
</html>