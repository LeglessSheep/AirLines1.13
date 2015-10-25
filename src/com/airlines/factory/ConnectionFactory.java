package com.airlines.factory;

import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionFactory {
	private static int banco;
	public static final int MYSQL = 1;
	public static final int POSTGRE = 2;

	// o banco default e o MySQL
	public static int getBanco() {
		if (banco != MYSQL && banco != POSTGRE)
			setBanco(MYSQL);
		return banco;
	}

	public static void setBanco(int b) {
		if (b != MYSQL && b != POSTGRE)
			banco = MYSQL;
		else
			banco = b;
	}

	public static Connection conectar() throws SQLException {
		switch (banco) {
		case MYSQL:
			return ConnectionFactoryMySQL.conectar();
		case POSTGRE:
			return null; //ConnFactoryPostgreSQL.conectar();
		default:
			return ConnectionFactoryMySQL.conectar();
		}
	}
}
