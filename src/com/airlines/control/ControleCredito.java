package com.airlines.control;

import com.airlines.beans.Credito;

public class ControleCredito {
	
	public ControleCredito() {
	}
	
	public static boolean validarTamanho(Credito credito)
	{
		if(credito.getNome().length() > 0 && credito.getCpf().length() > 0 && 
			credito.getNumCartao() > 0 && credito.getCodSeguranca() > 0)
		{
			return true;
		}
		
		return false;
	}

}
