/*
 * This java source file is generated by DAO4J v1.19
 * Generated on Mon Apr 11 17:55:11 CDT 2016
 * For more information, please contact b-i-d@163.com
 * Please check http://sourceforge.net/projects/dao4j/ for the latest version.
 */

package mx.ipn.web.dao.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import mx.ipn.web.dao.*;


public interface EscuelaDAO {
	public void create( Escuela escuela, Connection conn ) throws SQLException;
	public Escuela load ( int key,Connection conn) throws SQLException;
	
	public List<Escuela> loadAll( Connection conn ) throws SQLException;
	public void update( Escuela escuela, Connection conn ) throws SQLException;
	public void delete( int key, Connection conn ) throws SQLException;
}