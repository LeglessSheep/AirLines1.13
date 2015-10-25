package com.airlines.beans;

public class Cliente {
	
	private int 	codCliente;
	private String 	nome;
	private String 	sobrenome;
	private String 	dtNascimento;
	private String 	tratamento;
	private String 	tipo;
	private String 	email;
	private int 	ddd;
	private int 	celular;

	public Cliente() {
	}
	
	public Cliente(int codCliente, String nome, String sobrenome, String dtNascimento,
					String tratamento, String tipo, String email, int ddd, int celular)
	{
		this.codCliente 	= codCliente;
		this.nome 			= nome;
		this.sobrenome		= sobrenome;
		this.dtNascimento	= dtNascimento;
		this.tratamento		= tratamento;
		this.tipo			= tipo;
		this.email			= email;
		this.ddd			= ddd;
		this.celular		= celular;
	}
	
	public int getCodCliente() {
		return codCliente;
	}

	public void setCodCliente(int codCliente) {
		this.codCliente = codCliente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getDtNascimento() {
		return dtNascimento;
	}

	public void setDtNascimento(String dtNascimento) {
		this.dtNascimento = dtNascimento;
	}

	public String getTratamento() {
		return tratamento;
	}

	public void setTratamento(String tratamento) {
		this.tratamento = tratamento;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getDdd() {
		return ddd;
	}

	public void setDdd(int ddd) {
		this.ddd = ddd;
	}

	public int getCelular() {
		return celular;
	}

	public void setCelular(int celular) {
		this.celular = celular;
	}


	@Override
	public String toString() {
		return "Cliente [codCliente=" + codCliente + ", nome=" + nome
				+ ", sobrenome=" + sobrenome + ", dtNascimento=" + dtNascimento
				+ ", tratamento=" + tratamento + ", tipo=" + tipo + ", email="
				+ email + ", ddd=" + ddd + ", celular=" + celular + "]";
	}
	
}
