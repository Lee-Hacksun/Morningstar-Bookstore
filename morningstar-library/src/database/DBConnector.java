package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import constant.DBConfig;

public class DBConnector {
	private static Connection con = null;
	
	static {
		try {
			Class.forName(DBConfig.DRIVER);
		}
		catch (java.lang.ClassNotFoundException ex){
			System.err.println("Driver load erro in DBConnector class" + ex.getMessage());
		}
		connectToDB();
	}
	
	public static Connection getConnection() {
		try {
			if (con == null | con.isClosed()) {
				connectToDB();
			}
		} catch (SQLException ex) {
			System.err.println("Driver load erro in DBConnector class" + ex.getMessage());
		}
		
		return con;
	}
	
	private static void connectToDB() {
		for(int i = 0; i < DBConfig.CONNECT_RETRY_COUNT; i++)
			if (tryConnect()) {
				break;
			}
	}
	
	private static Boolean tryConnect() {
		try {
			con = DriverManager.getConnection(DBConfig.URL, DBConfig.ADMIN_ID, DBConfig.ADMIN_PW);
			return true;
		}
		catch (SQLException ex) {
			System.err.println("Database connection erro in DBConnector class" + ex.getMessage());
		}
		
		return false;
	}
}
