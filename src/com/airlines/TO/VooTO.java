package com.airlines.TO;

import java.util.ArrayList;

import com.airlines.beans.Voo;

public class VooTO {

	private ArrayList<Voo> voos;
	
	public VooTO() {
		voos = new ArrayList<Voo>();
	}

	public ArrayList<Voo> getVoos() {
		return voos;
	}

	public void setVoos(ArrayList<Voo> voos) {
		this.voos = voos;
	}
	
	public void add(Voo v){
		voos.add(v);
	}
}
