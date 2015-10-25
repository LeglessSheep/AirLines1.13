package com.airlines.TO;

import java.util.ArrayList;

import com.airlines.beans.Passagem;

public class PassagemTO {

	private ArrayList<Passagem> passagens;
	private VooTO voo;
	
	
	public PassagemTO() {
		passagens = new ArrayList<Passagem>();
		voo = new VooTO();
	}


	public ArrayList<Passagem> getPassagens() {
		return passagens;
	}


	public void setPassagens(ArrayList<Passagem> passagens) {
		this.passagens = passagens;
	}


	public VooTO getVoo() {
		return voo;
	}


	public void setVoo(VooTO voo) {
		this.voo = voo;
	}
	
	public void add(Passagem p){
		passagens.add(p);
	}
	
}
