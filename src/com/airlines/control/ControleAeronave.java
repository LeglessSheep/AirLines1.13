package com.airlines.control;

import com.airlines.DAO.AeronaveDAO;
import com.airlines.TO.AeronaveTO;
import com.airlines.beans.Aeronave;
import com.airlines.factory.DAOFactory;

public class ControleAeronave {

	public ControleAeronave() {
	}
	
	public static boolean validarTamanho(Aeronave aeronave)
	{
		if(aeronave.getCodigo() >= 0 && aeronave.getModelo().length() > 0 &&
			aeronave.getNome().length() > 0 && aeronave.getTipo().length() > 0 && aeronave.getQtPassageiros() > 0)
		{
			return true;
		}
		
		return false;
	}
	

	public static void cadastrar(Aeronave a){
		
		try{
			AeronaveDAO dao= DAOFactory.getDAOFactory().getAeronaveDAO();
			if(validarTamanho(a)){
				dao.create(a);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static void alterar(Aeronave a){
		
		try{
			AeronaveDAO dao= DAOFactory.getDAOFactory().getAeronaveDAO();
			if(validarTamanho(a)){
				dao.update(a);
			}
			
		}
		catch(Exception e){
			
		}
	}
	
	public static void deletar(int a){
		
		try{
			AeronaveDAO dao= DAOFactory.getDAOFactory().getAeronaveDAO();
			if(a > 0){
				dao.delete(a);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static AeronaveTO consultar(String a){
		
		AeronaveTO aero= null;
		Aeronave aeronave = null;
		
		try{
		
			AeronaveDAO dao= DAOFactory.getDAOFactory().getAeronaveDAO();
			if(isInteger(a) && Integer.parseInt(a) > 0){
				
				aeronave = dao.findByCodigo(Integer.parseInt(a));
				if(aeronave != null){
					aero = new AeronaveTO();
					aero.add(aeronave);
				}
			}
			else {
				aero = dao.findByName(a);
			}
			
		}
		catch(Exception e){
			
		}
		return aero;
	}
	
	
	public static boolean isInteger(String s) {
	    try { 
	        Integer.parseInt(s); 
	    } catch(NumberFormatException e) { 
	        return false; 
	    } catch(NullPointerException e) {
	        return false;
	    }
	    // only got here if we didn't return false
	    return true;
	}

}
