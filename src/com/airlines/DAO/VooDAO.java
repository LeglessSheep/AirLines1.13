package com.airlines.DAO;

import com.airlines.TO.VooTO;
import com.airlines.beans.Voo;

public abstract class VooDAO extends DAO {

		//Método para gravar um registro de um Cliente na base de dados  
		public abstract void create(Voo v) throws Exception;
		
		
		//Método para atualizar registro de Cliente na base de dados  
		public abstract void update(Voo v) throws Exception;
		
		
		//Método para excluir registro de um cliente
		public abstract int delete(Integer cod_Voo) throws Exception;
		
		
		//Método para obter 1 registro de um cliente pelo codigo  
		public abstract Voo findByCodigo(Integer cod_Voo) throws Exception;
		

		public abstract VooTO findByOrigemDestinoData(String origem, String destino, String data) throws Exception;
}
