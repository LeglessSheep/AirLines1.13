package com.airlines.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.airlines.TO.AeronaveTO;
import com.airlines.beans.Aeronave;

public abstract class AeronaveDAO extends DAO{
	
	//Executar comandos em linguagem SQL na base de dados  
	protected  static PreparedStatement stmt;
			
	//Ler e resgatar dados de consultas feitas na base  
	protected  static ResultSet rs;

	public abstract int retornaAssentos(int cod_Aeronave) throws Exception;
	
	//Cadastrar
	public abstract void create(Aeronave a) throws Exception;
	//Atualizar
	public abstract void update(Aeronave a) throws Exception;
	//Deletar
	public abstract void delete(Integer cod_Aeronave) throws Exception;
	//Achar por código
	public abstract Aeronave findByCodigo(Integer cod_Aeronave) throws Exception;
	//Achar por nome
	public abstract AeronaveTO findByName(String nome) throws Exception;


}
