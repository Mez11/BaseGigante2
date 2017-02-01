package mx.ipn.web.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private final static String CONN_URL = "jdbc:mysql://localhost:3306/";
	private final static String CONN_USER = "root";
	private final static String CONN_PASS = "interpol11";
	private final static String DB_NAME = "BaseGigante2";
	private final static String DRIVER_MANAGER = "com.mysql.jdbc.Driver";
	
	private static Connection conn = null;
	
	private static void connect( ){
		try {
			Class.forName( DRIVER_MANAGER );
			conn = DriverManager.getConnection( CONN_URL + DB_NAME, CONN_USER, CONN_PASS );
			System.out.println( "***Conexion iniciada por vez primera...");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection( ){
		if( conn == null ){
			connect( );
		}
		
		return conn;
	}//end getConnection
	
}//end class
