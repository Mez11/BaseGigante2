<%@page import="mx.ipn.web.factory.ConnectionFactory"%>
<%@page import="mx.ipn.web.dao.orm.CarreraDAOImpl"%>
<%@page import="mx.ipn.web.dao.Carrera"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
//List <Carrera> carrera = new CarreraDAOImpl( )
	List<Carrera> carreras = new CarreraDAOImpl().loadAll( ConnectionFactory.getConnection( ) );

%>
 <title> DAO Carrera</title>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<table border =2>
	<tr>
	<td with=8880>Nombre</td>
	<td with=8880>Duracion</td>
	<td with =8880>Escuela</td>
	</tr>
<% 
for (Carrera carrera : carreras){
		 out.println("<table border =2>");
         out.println("<td >" + carrera.getNombre() +"</td>");
         out.println("<td >" + carrera.getDuracion()+"<td>");
         out.println( "<td >" + carrera.getIdescuela() + "</td>" );
         out.println("</table>");
     }
 %>
 </table>
</body>
</html>