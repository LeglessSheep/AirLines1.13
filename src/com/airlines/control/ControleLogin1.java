package com.airlines.control;

import java.util.ArrayList;
import java.util.Scanner;

import com.airlines.beans.Login;
import com.airlines.mysqlDAO.LoginDAOMySQL;

public class ControleLogin1 {

	
	public ControleLogin1() {
	
	}
	
	public static boolean logar(Login login) throws Exception{
		
		LoginDAOMySQL d = new LoginDAOMySQL();
		
		return false;
	}
	
	
	public static int numeroBusca(ArrayList<String> vetor,String busca)

	{
	
		int baixo = 0, alto = vetor.size();
	
		while(baixo <= alto && baixo < vetor.size())
	
		{
	
			int meio = (alto + baixo)/2;
			
			if(busca.compareTo(vetor.get(meio)) > 0)
			{
		
				baixo = meio+1;
		
			}
	
			else if(busca.compareTo(vetor.get(meio)) < 0)
	
			{
	
				alto = meio-1;
				
			}
	
			else return meio;
		
		}
		
		return -1;
	
	}		
}
