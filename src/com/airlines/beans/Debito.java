package com.airlines.beans;

public class Debito {

	private String 	banco;
	private int 	agencia;
	private int		contaCorrente;
	private String 	nome;
	private String 	cpf;
	private int 	telefone;
	
	public Debito() {
	}

	public String getBanco() {
		return banco;
	}

	public void setBanco(String banco) {
		this.banco = banco;
	}

	public int getAgencia() {
		return agencia;
	}

	public void setAgencia(int agencia) {
		this.agencia = agencia;
	}

	public int getContaCorrente() {
		return contaCorrente;
	}

	public void setContaCorrente(int contaCorrente) {
		this.contaCorrente = contaCorrente;
	}

	public String getNome() {
		return nome;
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

	public int getTelefone() {
		return telefone;
	}

	public void setTelefone(int telefone) {
		this.telefone = telefone;
	}

	@Override
	public String toString() {
		return "Debito [banco=" + banco + ", agencia=" + agencia
				+ ", contaCorrente=" + contaCorrente + ", nome=" + nome
				+ ", cpf=" + cpf + ", telefone=" + telefone + "]";
	}
	

}
