package com.airlines.control;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import util.DateFormatter;

import com.airlines.DAO.AeronaveDAO;
import com.airlines.DAO.VooDAO;
import com.airlines.TO.VooTO;
import com.airlines.beans.Aeronave;
import com.airlines.beans.Voo;
import com.airlines.factory.DAOFactory;

public class ControleVoo {

	public static boolean validaCodigo(int i){
		
		if(i >= 0){
			return true;
		}
		return false;	
	}
	

	
	public static boolean validaOrigem(String i)
	{
		Pattern regex = Pattern.compile("^[A-Za-zÀ-Üà-ü\\s]{3,30}$");
		Matcher m = regex.matcher(i);
		if(m.matches()){
			return true;
		}
		return false;	
	}
	
	public static boolean validaDestino(String i)
	{
		Pattern regex = Pattern.compile("^[A-Za-zÀ-Üà-ü\\s]{3,30}$");
		Matcher m = regex.matcher(i);
		if(m.matches()){
			return true;
		}
		return false;	
	}
	
	public static boolean validaDataHoraSaida(String i){
		
		Pattern regex = Pattern.compile("20\\d{2}(-|\\/)((0[1-9])|(1[0-2]))(-|\\/)((0[1-9])|([1-2][0-9])|(3[0-1]))(T|\\s)(([0-1][0-9])|(2[0-3])):([0-5][0-9]):([0-5][0-9])");
		Matcher m = regex.matcher(i);
		
		if(m.matches()){
			return true;
		}
		return false;	
	}
	
	public static boolean validaDataHoraChegada(String i){
		Pattern regex = Pattern.compile("20\\d{2}(-|\\/)((0[1-9])|(1[0-2]))(-|\\/)((0[1-9])|([1-2][0-9])|(3[0-1]))(T|\\s)(([0-1][0-9])|(2[0-3])):([0-5][0-9]):([0-5][0-9])");
		Matcher m = regex.matcher(i);
		
		if(m.matches()){
			return true;
		}
		return false;
	}
	
	public static boolean validarVoo(Voo v)
	{
		if(v.getCodigoAeronave() > 0 && v.getDestino().length() > 2 && 
			v.getOrigem().length() > 2 && v.getDataHoraSaida().length() > 12 && v.getDataHoraChegada().length() > 12)
			return true;
		else return false;
	}
	
	public static void cadastrar(Voo a){
		
		try{
			VooDAO dao= DAOFactory.getDAOFactory().getVooDAO();
			AeronaveDAO daoa = DAOFactory.getDAOFactory().getAeronaveDAO();
			Aeronave ab = daoa.findByCodigo(a.getCodigoAeronave());
			if(ab != null && validarVoo(a)){
				dao.create(a);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static String deletar(int a){
		try{
			VooDAO dao= DAOFactory.getDAOFactory().getVooDAO();
			if(a > 0){
				dao.delete(a);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			return "Falha na exclusão do vôo!";
		}
		return "Vôo excluído com sucesso!";
	}
	

	public static void alterar(Voo a) {
		try{
			VooDAO dao= DAOFactory.getDAOFactory().getVooDAO();
			AeronaveDAO daoa = DAOFactory.getDAOFactory().getAeronaveDAO();
			Aeronave ab = daoa.findByCodigo(a.getCodigoAeronave());
			if(ab != null && validarVoo(a) && a.getCodigo() > 0){
				dao.update(a);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public static Voo consultar(int a){
		VooDAO dao = DAOFactory.getDAOFactory().getVooDAO();
		Voo v = null;
		if(a > 0){
			try {
				v = dao.findByCodigo(a);
				v.setDataHoraChegada(DateFormatter.formatarDataHora(v.getDataHoraChegada().substring(0,18)));
				v.setDataHoraSaida(DateFormatter.formatarDataHora(v.getDataHoraSaida().substring(0,18)));
			} catch (Exception e) {
				e.printStackTrace();
				v = new Voo();
				v.setCodigo(-1);
			}
		}
		return v;
	}
	
	public static VooTO consultarVoos(String origem, String destino, String data){
		try{
			VooDAO dao = DAOFactory.getDAOFactory().getVooDAO();
			VooTO to = null;
			
			to = dao.findByOrigemDestinoData(origem, destino, data);
			return to;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	return null;
	}
}
