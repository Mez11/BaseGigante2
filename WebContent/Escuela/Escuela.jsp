<%@page import="mx.ipn.web.dao.Escuela"%>
<%@page import="mx.ipn.web.factory.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@page import="mx.ipn.web.dao.orm.EscuelaDAOImpl"%>
<%@page import="mx.ipn.web.dao.dao.EscuelaDAO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
		List<Escuela>escuelas = new EscuelaDAOImpl().loadAll(ConnectionFactory.getConnection()); 
%>

 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Escuela DAO</title>
</head>
<body>
<table>
<tr>
<th>nombre @.@.</th>
</tr>
</table>
<%
	for(Escuela escuela:escuelas){
		out.println("<table border =1>");
		out.println("<tr>"+ escuela.getNombre()+"</tr>");
		out.println("</table>");
		}
%>	
</body>
</html>