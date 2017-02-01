package mx.ipn.web.dao.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import mx.ipn.web.dao.Alumno;

public interface AlumnoDAO {
	public void create( Alumno alumno, Connection conn ) throws SQLException;
	public Alumno load( int key, Connection conn ) throws SQLException;
	public List<Alumno> loadAll( Connection conn ) throws SQLException;
	public void update( Alumno alumno, Connection conn ) throws SQLException;
	public void delete( int key, Connection conn ) throws SQLException;
}
