package com.airlines.beans;

public class Credito {
	
	private String	tipo;
	private String 	nome;
	private String 	cpf;
	private int 	NumCartao;
	private String 	dtValidadeMes;
	private int 	dtValidadeAno;
	private int 	codSeguranca;

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getNome() {
		return nome;
	}

	@Override
	public String toString() {
		return "Credito [tipo=" + tipo + ", nome=" + nome + ", cpf=" + cpf
				+ ", NumCartao=" + NumCartao + ", dtValidadeMes="
				+ dtValidadeMes + ", dtValidadeAno=" + dtValidadeAno
				+ ", codSeguranca=" + codSeguranca + "]";
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public int getNumCartao() {
		return NumCartao;
	}

	public void setNumCartao(int numCartao) {
		NumCartao = numCartao;
	}

	public String getDtValidadeMes() {
		return dtValidadeMes;
	}

	public void setDtValidadeMes(String dtValidadeMes) {
		this.dtValidadeMes = dtValidadeMes;
	}

	public int getDtValidadeAno() {
		return dtValidadeAno;
	}

	public void setDtValidadeAno(int dtValidadeAno) {
		this.dtValidadeAno = dtValidadeAno;
	}

	public int getCodSeguranca() {
		return codSeguranca;
	}

	public void setCodSeguranca(int codSeguranca) {
		this.codSeguranca = codSeguranca;
	}

	public Credito() {
	}

}
