package com.airlines.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactoryMySQL extends ConnectionFactory {
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection conectar() throws SQLException {
		return DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/airlines?user=alunos&password=alunos");
	}
}
