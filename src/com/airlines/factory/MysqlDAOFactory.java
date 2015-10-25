package com.airlines.factory;


import com.airlines.DAO.AeronaveDAO;
import com.airlines.DAO.ClienteDAO;
import com.airlines.DAO.LoginDAO;
import com.airlines.DAO.PassagemDAO;
import com.airlines.DAO.VooDAO;
import com.airlines.mysqlDAO.AeronaveDAOMySQL;
import com.airlines.mysqlDAO.ClienteDAOMySQL;
import com.airlines.mysqlDAO.LoginDAOMySQL;
import com.airlines.mysqlDAO.PassagemDAOMySQL;
import com.airlines.mysqlDAO.VooDAOMySQL;

public class MysqlDAOFactory  extends DAOFactory{
	
	// LoginDAOMySQL implementa a interface LoginDAO
	public LoginDAO getLoginDAO(){
		return new LoginDAOMySQL();
	}

	public AeronaveDAO getAeronaveDAO() {
		return new AeronaveDAOMySQL();
	}
	
	public ClienteDAO getClienteDAO() {
		return new ClienteDAOMySQL();
	}

	public VooDAO getVooDAO() {
		return new VooDAOMySQL();
	}

	public PassagemDAO getPassagemDAO() {
		return new PassagemDAOMySQL();
	}
	

}
