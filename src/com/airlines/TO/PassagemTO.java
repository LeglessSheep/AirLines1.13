package com.airlines.TO;

import java.util.ArrayList;

import com.airlines.beans.Passagem;


public class PassagemTO {

	ArrayList<Passagem> passagens;
	
	public PassagemTO() {
		// TODO Auto-generated constructor stub
	}

	public ArrayList<Passagem> getPassagens() {
		return passagens;
	}

	public void setPassagens(ArrayList<Passagem> passagens) {
		this.passagens = passagens;
	}
	
	
	public void add(Passagem p){
		passagens.add(p);
	}
}
