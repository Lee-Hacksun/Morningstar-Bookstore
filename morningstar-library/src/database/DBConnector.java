package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import constant.DBConfig;

public class DBConnector {
	public static Connection con = null;
	
	static {
		try {
			Class.forName(DBConfig.DRIVER);
			con = DriverManager.getConnection(DBConfig.URL, DBConfig.ADMIN_ID, DBConfig.ADMIN_PW);
		}
		catch (java.lang.ClassNotFoundException ex){
			System.err.println("Driver load erro in DBConnector class" + ex.getMessage());
		}
		catch (SQLException ex) {
			System.err.println("Database connection erro in DBConnector class" + ex.getMessage());
		}
	}
	
	public static Connection getConnection() {
		try {
			if (con == null | con.isClosed()) {
				con = DriverManager.getConnection(DBConfig.URL, DBConfig.ADMIN_ID, DBConfig.ADMIN_PW);
			}
		}
		catch (SQLException ex) {
			System.err.println("Database connection erro in DBConnector class" + ex.getMessage());
		}
		
		return con;
	}
}
