<%@page import="mx.ipn.web.dao.Materia"%>
<%@page import="java.util.List"%>
<%@page import="mx.ipn.web.factory.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@page import="mx.ipn.web.dao.orm.MateriaDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
 	List<Materia> materias = new MateriaDAOImpl( ).loadAll( ConnectionFactory.getConnection( ) );
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DAO de Materia</title>
</head>
<body>
<table border =2 >
<tr>
<td width= 100> Nombre</td>
</tr>
</table>
<%
for (Materia materia:materias){
	out.println("<table border ='2'>");
	out.println("<td width = 60 >"+ materia.getNombre()+"</td>");
	out.println("</table>");
}

%>

</body>
</html>