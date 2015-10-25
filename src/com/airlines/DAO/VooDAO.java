package com.airlines.DAO;

import com.airlines.TO.VooTO;
import com.airlines.beans.Voo;

public abstract class VooDAO extends DAO {

		//M�todo para gravar um registro de um Cliente na base de dados  
		public abstract void create(Voo v) throws Exception;
		
		
		//M�todo para atualizar registro de Cliente na base de dados  
		public abstract void update(Voo v) throws Exception;
		
		
		//M�todo para excluir registro de um cliente
		public abstract int delete(Integer cod_Voo) throws Exception;
		
		
		//M�todo para obter 1 registro de um cliente pelo codigo  
		public abstract Voo findByCodigo(Integer cod_Voo) throws Exception;
		

		public abstract VooTO findByOrigemDestinoData(String origem, String destino, String data) throws Exception;
}
