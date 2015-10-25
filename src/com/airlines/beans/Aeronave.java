package com.airlines.beans;

public class Aeronave {
	
	private int 	codigo;
	private String 	modelo;
	private String 	nome;
	private String 	tipo;
	private int 	qtPassageiros;

	public Aeronave(){
	}
	
	public Aeronave(int codigo, String modelo, String nome,
					String tipo, int qtPassageiros)
	{
		this.codigo			= codigo;
		this.modelo 		= modelo;
		this.nome			= nome;
		this.tipo			= tipo;
		this.qtPassageiros	= qtPassageiros;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getQtPassageiros() {
		return qtPassageiros;
	}

	public void setQtPassageiros(int qtPassageiros) {
		this.qtPassageiros = qtPassageiros;
	}

	@Override
	public String toString() {
		return "Aeronave [codigo=" + codigo + ", modelo=" + modelo + ", nome="
				+ nome + ", tipo=" + tipo + ", qtPassageiros=" + qtPassageiros
				+ "]";
	}

}
