package com.airlines.control;

import java.util.TreeSet;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import util.DateFormatter;

import com.airlines.DAO.VooDAO;
import com.airlines.TO.VooTO;
import com.airlines.beans.Voo;
import com.airlines.factory.DAOFactory;

public class ControleJSONVoo {

	
	public ControleJSONVoo() {
		// TODO Auto-generated constructor stub
	}
	
	public static String listToJSon(VooTO lista) {

		JSONArray vetor = new JSONArray();

		for (Voo Voo : lista.getVoos()) {

			JSONObject object = new JSONObject();

			try {

				object.put("data_saida", DateFormatter.formatarData(Voo.getDataHoraSaida().substring(0,18)));
		
				object.put("data_chegada", DateFormatter.formatarData(Voo.getDataHoraChegada().substring(0,18)));
				
				object.put("assentos", Voo.getAssento());
				
				vetor.put(object);
	
			} catch (JSONException e) {
	
				e.printStackTrace();
	
			}
			
			catch(Exception e){
				e.printStackTrace();
			}

		}
		System.out.println(vetor.toString());
		return vetor.toString();
	}
	
	

	public static void main(String[] args) {
		VooTO v = new VooTO();
		Voo voo = new Voo();
		try{
			VooDAO dao = DAOFactory.getDAOFactory().getVooDAO();
			voo = dao.findByCodigo(1);
			v.add(voo);
			ControleJSONVoo.listToJSon(v);
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
}
