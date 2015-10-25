package com.airlines.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.airlines.beans.Cliente;
import com.airlines.beans.Login;

public abstract class LoginDAO extends DAO{
	
	//Executar comandos em linguagem SQL na base de dados  
	protected  static PreparedStatement stmt;
			
	//Ler e resgatar dados de consultas feitas na base  
	protected  static ResultSet rs;
	
	//Operacao basica de logar
	public abstract Cliente logar(Login login);
	
	public abstract void create(Login login, int cliente);
}
