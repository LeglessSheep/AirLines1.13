package com.airlines.beans;

public class Passagem {
	
	private int 	codigoPassagem;
	private Voo 	voo;
	private Cliente cliente;
	private double	preco;
	private int 	assento;
	private double	taxa;

	public Passagem() {
	}
	

	public Passagem(int codigoPassagem, double preco, int assento, double taxa) 
	{
		this.codigoPassagem = codigoPassagem;
		this.preco 			= preco;
		this.assento	 	= assento;
		this.taxa 			= taxa;
	}

	public int getCodigoPassagem() {
		return codigoPassagem;
	}

	public void setCodigoPassagem(int codigoPassagem) {
		this.codigoPassagem = codigoPassagem;
	}


	public Voo getVoo() {
		return voo;
	}

	public void setVoo(Voo voo) {
		this.voo = voo;
	}

	public Cliente getCliente() {
		return cliente;
	}


	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}


	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public int getAssento() {
		return assento;
	}

	public void setAssento(int assento) {
		this.assento = assento;
	}

	public double getTaxa() {
		return taxa;
	}

	public void setTaxa(double taxa) {
		this.taxa = taxa;
	}
	
	@Override
	public String toString() {
		return "Passagem [codigoPassagem=" + codigoPassagem+ ", preco="
				+ preco + ", assento=" + assento + ", taxa=" + taxa + "\nDados do voo: " + voo.toString() + "]";
	}

}
