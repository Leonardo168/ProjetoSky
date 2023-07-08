package model;

public class Voo {
	private int nro;
	private int assentosVagos;
	private String origem;
	private String destino;
	private String data;

	public Voo() {
		super();
	}

	public Voo(int nro, int assentosVagos, String origem, String destino, String data) {
		super();
		this.nro = nro;
		this.assentosVagos = assentosVagos;
		this.origem = origem;
		this.destino = destino;
		this.data = data;
	}

	public int getNro() {
		return nro;
	}

	public void setNro(int nro) {
		this.nro = nro;
	}

	public int getAssentosVagos() {
		return assentosVagos;
	}

	public void setAssentosVagos(int assentosVagos) {
		this.assentosVagos = assentosVagos;
	}

	public String getOrigem() {
		return origem;
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

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

}
