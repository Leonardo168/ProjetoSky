package model;

public class Reserva {
	private int key;
	private int nroVoo;
	private int idusuario;

	public Reserva() {
		super();
	}

	public Reserva(int key, int nroVoo, int idusuario) {
		super();
		this.key = key;
		this.nroVoo = nroVoo;
		this.idusuario = idusuario;
	}

	public int getKey() {
		return key;
	}

	public void setKey(int key) {
		this.key = key;
	}

	public int getNroVoo() {
		return nroVoo;
	}

	public void setNroVoo(int nroVoo) {
		this.nroVoo = nroVoo;
	}

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	

}
