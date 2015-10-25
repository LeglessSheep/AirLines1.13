package com.airlines.beans;

public class Voo {
	
	private int 	codigo;
	private int		codigoAeronave;
	private String 	origem;
	private String 	destino;
	private String 	dataHoraSaida;
	private String 	dataHoraChegada;
	private String 	situacao;
	private int 	assento;

	public Voo() {
	}
	
	public Voo(int codigo, String origem, String destino,
				String dataHoraSaida, String dataHoraChegada, String situacao)
	{
		this.codigo 			= codigo;
		this.origem 			= origem;
		this.destino 			= destino;
		this.dataHoraSaida 		= dataHoraSaida;
		this.dataHoraChegada 	= dataHoraChegada;
		this.situacao 			= situacao;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getOrigem() {
		return origem;
	}

	public int getCodigoAeronave() {
		return codigoAeronave;
	}

	public void setCodigoAeronave(int codigoAeronave) {
		this.codigoAeronave = codigoAeronave;
	}

	public void setOrigem(String origem) {
		this.origem = origem;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public String getDataHoraSaida() {
		return dataHoraSaida;
	}

	public void setDataHoraSaida(String dataHoraSaida) {
		this.dataHoraSaida = dataHoraSaida;
	}

	public String getDataHoraChegada() {
		return dataHoraChegada;
	}

	public void setDataHoraChegada(String dataHoraChegada) {
		this.dataHoraChegada = dataHoraChegada;
	}

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

	
	public int getAssento() {
		return assento;
	}

	public void setAssento(int assento) {
		this.assento = assento;
	}

	@Override
	public String toString() {
		return "Voo [codigo=" + codigo + ", codigoAeronave=" + codigoAeronave
				+ ", origem=" + origem + ", destino=" + destino
				+ ", dataHoraSaida=" + dataHoraSaida + ", dataHoraChegada="
				+ dataHoraChegada + ", situacao=" + situacao + "]";
	}
	
	

}
