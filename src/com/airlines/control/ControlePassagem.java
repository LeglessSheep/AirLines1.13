package com.airlines.control;

import com.airlines.DAO.PassagemDAO;
import com.airlines.beans.Passagem;
import com.airlines.factory.DAOFactory;

public class ControlePassagem {

	public static String comprar(Passagem p, int qtdA, int qtdB, int qtdC){
	
		PassagemDAO dao = DAOFactory.getDAOFactory().getPassagemDAO();
		try {
			for(int i = 0; i < qtdA; i++){
				
			}
			for(int i = 0; i < qtdB; i++){
				
			}
			for(int i = 0; i < qtdC; i++){
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public static Passagem dadosCompra(int codigoVoo){
		
		PassagemDAO dao = DAOFactory.getDAOFactory().getPassagemDAO();
		Passagem p= null;
		try {
			p = dao.findByVoo(codigoVoo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

}
