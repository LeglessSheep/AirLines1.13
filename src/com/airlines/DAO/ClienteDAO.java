package com.airlines.DAO;

import com.airlines.beans.Cliente;


public abstract class ClienteDAO extends DAO {
	
	public abstract  void create(Cliente c) throws Exception;
	
	
	//M�todo para atualizar registro de Cliente na base de dados  
	public abstract  void update(Cliente c) throws Exception;
	
	
	//M�todo para excluir registro de um cliente
	public abstract void delete(Integer cod_Cliente) throws Exception;
	
	
	//M�todo para obter 1 registro de um cliente pelo codigo  
	public abstract  Cliente findByCodigo(Integer cod_Cliente) throws Exception;
}

