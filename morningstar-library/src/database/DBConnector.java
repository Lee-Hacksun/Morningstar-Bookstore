package database;

import java.sql.Connection;
import java.sql.SQLException;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import constant.DBConfig;

public class DBConnector {
	private static HikariDataSource dataSource;
	
	static {		
		HikariConfig hikariConfig = new HikariConfig();
		hikariConfig.setJdbcUrl(DBConfig.URL);
		hikariConfig.setUsername(DBConfig.ADMIN_ID);
		hikariConfig.setPassword(DBConfig.ADMIN_PW);
		hikariConfig.setMaximumPoolSize(DBConfig.MAXIMUM_POOL_SIZE);
		
		dataSource = new HikariDataSource(hikariConfig);
	}
	
	public static Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}
}
