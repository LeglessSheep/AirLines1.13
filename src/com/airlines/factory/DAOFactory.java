package com.airlines.factory;

import com.airlines.DAO.AeronaveDAO;
import com.airlines.DAO.ClienteDAO;
import com.airlines.DAO.LoginDAO;
import com.airlines.DAO.PassagemDAO;
import com.airlines.DAO.VooDAO;

public abstract class DAOFactory {


		public static final int MYSQL = 1;
		public static final int POSTGREE = 2;
		public static int banco;
		
		public abstract LoginDAO getLoginDAO();
		
		public abstract AeronaveDAO getAeronaveDAO();
		
		public abstract ClienteDAO getClienteDAO();
		
		public abstract VooDAO getVooDAO();
		
		public abstract PassagemDAO getPassagemDAO();


		public static DAOFactory getDAOFactory() {
			switch (banco) {
			case MYSQL:
				return new MysqlDAOFactory();
			case POSTGREE:
				return null; //new PostgreeDAOFactory();
			default:
				return new MysqlDAOFactory();
			}
		}
}
