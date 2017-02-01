/*
 * This java source file is generated by DAO4J v1.19
 * Generated on Mon Apr 11 17:55:12 CDT 2016
 * For more information, please contact b-i-d@163.com
 * Please check http://sourceforge.net/projects/dao4j/ for the latest version.
 */

package mx.ipn.web.dao.orm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;
import java.util.ArrayList;
import mx.ipn.web.dao.*;
import mx.ipn.web.dao.dao.ExamenDAO;

/**
 * This class provides methods to populate DB Table of Examen
 */
public class ExamenDAOImpl implements ExamenDAO {
    /* SQL to insert data */
    private static final String SQL_INSERT =
        "INSERT INTO Examen ("
        + "idExamen, periodo, fecha, idMateria"
        + ") VALUES (?, ?, ?, ?)";

    /* SQL to select data */
    private static final String SQL_SELECT =
        "SELECT "
        + "idExamen, periodo, fecha, idMateria "
        + "FROM Examen WHERE "
        + "idExamen = ?";
    /*Para seleccionar todo*/
    private static final String SQL_SELECT_ALL =
    		"SELECT " 
    		+"idExamen,periodo,fecha,idMateria "
    		+"FROM Examen";
    
   /* SQL to update data */
    private static final String SQL_UPDATE =
        "UPDATE Examen SET "
        + "periodo = ?, fecha = ?, idMateria = ? "
        + "WHERE "
        + "idExamen = ?";

    /* SQL to delete data */
    private static final String SQL_DELETE =
        "DELETE FROM Examen WHERE "
        + "idExamen = ?";

    /**
     * Create a new record in Database.
     * @param bean   The Object to be inserted.
     * @param conn   JDBC Connection.
     * @exception    SQLException if something is wrong.
     */
    public void create(Examen bean, Connection conn) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(SQL_INSERT);
            ps.setInt(1, bean.getIdexamen());
            ps.setString(2, bean.getPeriodo());
            if (bean.getFecha() != null)
                ps.setDate(3, new java.sql.Date(bean.getFecha().getTime()));
            else
                ps.setNull(3, Types.DATE);
            ps.setInt(4, bean.getIdmateria());
            ps.executeUpdate();
        }finally {
            close(ps);
        }
    }

    /**
     * Retrive a record from Database.
     * @param beanKey   The PK Object to be retrived.
     * @param conn      JDBC Connection.
     * @exception       SQLException if something is wrong.
     */
    public Examen load(int key, Connection conn) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(SQL_SELECT);
            ps.setInt(1, key);
            rs = ps.executeQuery();
            List results = getResults(rs);
            if (results.size() > 0)
                return (Examen) results.get(0);
            else
                return null;
        }finally {
            close(rs);
            close(ps);
        }
    }
/*Implementacion de loadAll*/
    public List<Examen> loadAll (Connection conn) throws SQLException{
    	PreparedStatement ps = null;
    	ResultSet rs = null;
    	try{
    		ps= conn.prepareStatement(SQL_SELECT_ALL);
    		rs = ps.executeQuery();
    		List<Examen> results = getResults(rs);
    		return results;
    		
    	}finally {
    		close(rs);
    		close(ps);
    	}
    }
    	
    
    
    
    
    /**
     * Update a record in Database.
     * @param bean   The Object to be saved.
     * @param conn   JDBC Connection.
     * @exception    SQLException if something is wrong.
     */
    public void update(Examen bean, Connection conn) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(SQL_UPDATE);
            ps.setString(1, bean.getPeriodo());
            if (bean.getFecha() != null)
                ps.setDate(2, new java.sql.Date(bean.getFecha().getTime()));
            else
                ps.setNull(2, Types.DATE);
            ps.setInt(3, bean.getIdmateria());
            ps.setInt(4, bean.getIdexamen());
            ps.executeUpdate();
        }finally {
            close(ps);
        }
    }

    /**
     * Create a new record in Database.
     * @param bean   The PK Object to be deleted.
     * @param conn   JDBC Connection.
     * @exception    SQLException if something is wrong.
     */
    public void delete(int key, Connection conn) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(SQL_DELETE);
            ps.setInt(1, key);
            ps.executeUpdate();
        }finally {
            close(ps);
        }
    }
    
    /**
     * Populate the ResultSet.
     * @param rs     The ResultSet.
     * @return       The Object to retrieve from DB.
     * @exception    SQLException if something is wrong.
     */
    protected List<Examen> getResults(ResultSet rs) throws SQLException {
        List results = new ArrayList<Examen>();
        while (rs.next()) {
            Examen bean = new Examen();
            bean.setIdexamen(rs.getInt("idExamen"));
            bean.setPeriodo(rs.getString("periodo"));
            bean.setFecha(rs.getDate("fecha"));
            bean.setIdmateria(rs.getInt("idMateria"));
            results.add(bean);
        }
        return results;
    }

    /**
     * Close JDBC Statement.
     * @param stmt  Statement to be closed.
     */
    protected void close(Statement stmt) {
        if (stmt != null) {
            try {
                stmt.close();
            }catch(SQLException e){}
        }
    }

    /**
     * Close JDBC ResultSet.
     * @param rs  ResultSet to be closed.
     */
    protected void close(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            }catch(SQLException e){}
        }
    }

	
	
}