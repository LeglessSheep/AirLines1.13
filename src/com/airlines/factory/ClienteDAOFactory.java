package com.airlines.factory;

import com.airlines.DAO.ClienteDAO;
import com.airlines.mysqlDAO.ClienteDAOMySQL;

public class ClienteDAOFactory {

	public static ClienteDAO getLoginDAO() {
		switch(DAOFactory.banco){
		case DAOFactory.MYSQL: return new ClienteDAOMySQL();
		case DAOFactory.POSTGREE: return null; //CervejaDAOPOSTGRE();
		}
		return null;
	}

}
