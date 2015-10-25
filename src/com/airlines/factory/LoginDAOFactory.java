package com.airlines.factory;

import com.airlines.DAO.LoginDAO;
import com.airlines.mysqlDAO.LoginDAOMySQL;


public class LoginDAOFactory {

	public static LoginDAO getLoginDAO() {
		switch(DAOFactory.banco){
		case DAOFactory.MYSQL: return new LoginDAOMySQL();
		case DAOFactory.POSTGREE: return null; //CervejaDAOPOSTGRE();
		}
		return null;
	}

}
