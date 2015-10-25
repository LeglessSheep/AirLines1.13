package com.airlines.DAO;

import com.airlines.beans.Passagem;

public abstract class PassagemDAO extends DAO{
	
	public abstract void create(int voo, int assentos) throws Exception;
	
	public abstract void update(int passagem, int cliente) throws Exception;
	
	public abstract Passagem findByCodigo(Integer cod_Passagem) throws Exception;

	public abstract int proximoCodigo() throws Exception;

	
}
