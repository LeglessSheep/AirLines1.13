package com.airlines.control;

import com.airlines.beans.Debito;

public class ControleDebito {

	public ControleDebito() {
	}

	public static boolean validarTamanho(Debito debito)
	{
		if(debito.getAgencia() > 0 && debito.getContaCorrente() > 0 && 
			debito.getNome().length() > 0 && debito.getCpf().length() > 0 && debito.getTelefone() > 0)
		{
			return true;
		}
		
		return false;
	}
}
