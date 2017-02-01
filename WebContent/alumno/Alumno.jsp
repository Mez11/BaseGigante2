<%@page import="java.sql.Connection"%>
<%@page import="mx.ipn.web.factory.ConnectionFactory"%>
<%@page import="mx.ipn.web.dao.orm.AlumnoDAOImpl"%>
<%@page import="mx.ipn.web.dao.dao.AlumnoDAO"%>
<%@page import="mx.ipn.web.dao.Alumno"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
//Conexion por parametro
	List<Alumno> alumnos = new AlumnoDAOImpl( ).loadAll( ConnectionFactory.getConnection( ) );
   //FORMAS DE IMPLEMETAR DAO
	/*AlumnoDAOImpl dao = new AlumnoDAOImpl( );*/
	//dao.loadAll( ConnectionFactory.getConnection() );
	
	//AlumnoDAOImpl dao2 = new AlumnoDAOImpl( );
	//Connection conn = ConnectionFactory.getConnection();
	//alumnos = dao2.loadAll( conn );
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DAO de alumnos</title>
</head>
<body>
	<table>
		<tr>
			<th>Nombre</th>
			<th>Boleta</th>
			<th>Correo</th>
			<th>Carrera</th>
		</tr>
		<%
			for( Alumno alumno : alumnos ){
				out.println( "<tr>" );
				out.println( "<td>" + alumno.getNombreCompleto() + "</td>" );
				out.println( "<td>" + alumno.getBoleta() + "</td>" );
				out.println( "<td>" + alumno.getEmail( ) + "</td>" );
				out.println( "<td>" + alumno.getCarrera( ).getNombre( ) + "</td>" );
				out.println( "</tr>" );
			}
		%>
	</table>
	
</body>
</html>