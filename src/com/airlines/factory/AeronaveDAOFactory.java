package com.airlines.factory;

import com.airlines.DAO.AeronaveDAO;
import com.airlines.mysqlDAO.AeronaveDAOMySQL;

public class AeronaveDAOFactory {

	public static AeronaveDAO getLoginDAO() {
		switch(DAOFactory.banco){
		case DAOFactory.MYSQL: return new AeronaveDAOMySQL();
		case DAOFactory.POSTGREE: return null; //CervejaDAOPOSTGRE();
		}
		return null;
	}
}
