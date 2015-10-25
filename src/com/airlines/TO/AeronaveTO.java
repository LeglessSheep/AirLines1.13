package com.airlines.TO;

import java.util.ArrayList;

import com.airlines.beans.Aeronave;

public class AeronaveTO {

	private ArrayList<Aeronave> aeronaves;

	
	public AeronaveTO() {
		super();
		this.aeronaves = new ArrayList<Aeronave>();
	}
	
	
	
	public ArrayList<Aeronave> getAeronaves() {
		return aeronaves;
	}

	public void setAeronaves(ArrayList<Aeronave> aeronaves) {
		this.aeronaves = aeronaves;
	}

	@Override
	public String toString() {
		return "AeronaveTO [aeronaves=" + aeronaves + "]";
	}

	public void add(Aeronave aeronave){
		aeronaves.add(aeronave);
	}

	
}
