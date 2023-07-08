package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAO {
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/dbsky?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password = "th8b7thZD[JC288zn+oi";

	private Connection conectar() {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			return con;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("Falha em conectar()");
			return null;
		}
	}

	public void createUsuario(Usuario usuario) {
		String SQLcreateUsuario = "insert into usuario (nome_USUARIO,email_USUARIO,cpf_USUARIO,telefone_USUARIO,endereco_USUARIO,senha_USUARIO) values(?,?,?,?,?,?)";
		try {
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLcreateUsuario);
			myStmt.setString(1, usuario.getNome());
			myStmt.setString(2, usuario.getEmail());
			myStmt.setString(3, usuario.getCpf());
			myStmt.setString(4, usuario.getTelefone());
			myStmt.setString(5, usuario.getEndereco());
			myStmt.setString(6, usuario.getSenha());

			myStmt.executeUpdate();
			con.close();
			System.out.println("createUsuario()");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em createUsuario()");
		}
	}

	public void createReserva(Reserva reserva) {
		if (readVoo(reserva.getNroVoo()).getAssentosVagos() >= 1) {
			String SQLcreateUsuario = "insert into reservas (codigoVOO_RESERVA,codigoUsuario_RESERVA) values(?,?)";
			try {
				Connection con = conectar();
				PreparedStatement myStmt = con.prepareStatement(SQLcreateUsuario);
				myStmt.setInt(1, reserva.getNroVoo());
				myStmt.setInt(2, reserva.getIdusuario());
				myStmt.executeUpdate();
				con.close();
				ocupaAssento(reserva.getNroVoo());
				System.out.println("createReserva()");
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("erro em createReserva()");
			}
		} else {
			System.out.println("voo lotado");
		}
		
	}

	public void readUsuario(Usuario usuario) {
		String SQLreadUsuario = "select * from usuario where codigo_USUARIO = ?";
		try {
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLreadUsuario);
			myStmt.setInt(1, usuario.getId());
			ResultSet rs = myStmt.executeQuery();
			while (rs.next()) {
				usuario.setId(rs.getInt(1));
				usuario.setNome(rs.getString(2));
				usuario.setEmail(rs.getString(3));
				usuario.setCpf(rs.getString(4));
				usuario.setTelefone(rs.getString(5));
				usuario.setEndereco(rs.getString(6));
				usuario.setSenha(rs.getString(7));
			}
			con.close();
			System.out.println("readUsuario()");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em readUsuario()");
		}
	}
	
	public void readLoginUsuario(Usuario usuario) {
		String SQLreadUsuario = "select * from usuario where email_USUARIO = ? AND senha_USUARIO = ?";
		try {
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLreadUsuario);
			myStmt.setString(1, usuario.getEmail());
			myStmt.setString(2, usuario.getSenha());
			ResultSet rs = myStmt.executeQuery();
			if (rs.next()) {
				usuario.setId(rs.getInt(1));
			}
			con.close();
			readUsuario(usuario);
			System.out.println("readLoginUsuario()");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em readUsuario()");
		}
	}
	
	public Reserva readReserva(int key) {
		String SQLreadReserva = "select * from reservas where codigo_RESERVA = ? ";
		try {
			Reserva reserva = new Reserva();
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLreadReserva);
			myStmt.setInt(1, key);
			ResultSet rs = myStmt.executeQuery();
			while (rs.next()) {
				reserva.setKey(rs.getInt(1));
				reserva.setNroVoo(rs.getInt(2));
				reserva.setIdusuario(rs.getInt(3));
			}
			con.close();
			System.out.println("listarReservas()");
			return reserva;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em listarReservas()");
			return null;
		}
	}

	public Voo readVoo(int nro) {
		String SQLreadVoo = "select * from voos where codigo_VOOS = ?";
		try {
			Voo voo = new Voo();
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLreadVoo);
			myStmt.setInt(1, nro);
			ResultSet rs = myStmt.executeQuery();
			while (rs.next()) {
				voo.setNro(rs.getInt(1));
				voo.setAssentosVagos(rs.getInt(2));
				voo.setOrigem(rs.getString(3));
				voo.setDestino(rs.getString(4));
				voo.setData(rs.getString(5));
			}
			con.close();
			System.out.println("readVoo()");
			return voo;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em readVoo()");
			return null;
		}
	}

	public ArrayList<Reserva> listaReservas(int id) {
		String SQLlistaReservas = "select * from reservas where codigoUsuario_RESERVA = ? ";
		ArrayList<Reserva> reserva = new ArrayList<>();
		try {
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLlistaReservas);
			myStmt.setInt(1, id);
			ResultSet rs = myStmt.executeQuery();
			while (rs.next()) {
				int key = rs.getInt(1);
				int nroVoo = rs.getInt(2);
				int idusuario = rs.getInt(3);
				reserva.add(new Reserva(key, nroVoo, idusuario));
			}
			con.close();
			System.out.println("listarReservas()");
			return reserva;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em listarReservas()");
			return null;
		}
	}

	public ArrayList<Voo> listaVoo(int id) {
		String SQLlistarVoo = "select * from voos where codigo_VOOS = ? ";
		ArrayList<Reserva> reserva = listaReservas(id);
		ArrayList<Voo> voo = new ArrayList<>();

		try {
			Connection con = conectar();
			for (int i = 0; i < reserva.size(); i++) {
				PreparedStatement myStmt = con.prepareStatement(SQLlistarVoo);
				myStmt.setInt(1, reserva.get(i).getNroVoo());
				ResultSet rs = myStmt.executeQuery();
				while (rs.next()) {
					int nro = rs.getInt(1);
					int assentosVagos = rs.getInt(2);
					String origem = rs.getString(3);
					String destino = rs.getString(4);
					String data = rs.getString(5);
					voo.add(new Voo(nro, assentosVagos, origem, destino, data));
				}
			}
			System.out.println("listarVoo()");
			return voo;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em listarVoo()");
			return null;
		}
	}

	public ArrayList<Voo> buscaVoo(Voo voo) {
		String SQLreadReserva = "select * from voos where origem_VOOS = ? and destino_VOOS = ? and data_horario_VOOS = ? and assentosVazios_VOOS >= ?";
		ArrayList<Voo> lista = new ArrayList<>();
		try {
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLreadReserva);
			myStmt.setString(1, voo.getOrigem());
			myStmt.setString(2, voo.getDestino());
			myStmt.setString(3, voo.getData());
			myStmt.setInt(4, voo.getAssentosVagos());
			ResultSet rs = myStmt.executeQuery();
			while (rs.next()) {
				int nro = rs.getInt(1);
				int assentosVagos = rs.getInt(2);
				String origem = rs.getString(3);
				String destino = rs.getString(4);
				String data = rs.getString(5);
				lista.add(new Voo(nro, assentosVagos, origem, destino, data));
			}
			con.close();
			System.out.println("buscaVoo()");
			return lista;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em buscaVoo()");
			return null;
		}
	}

	public void updateUsuario(Usuario usuario) {
		String SQLupdateUsuario = "update usuario set email_USUARIO = ?, telefone_USUARIO = ?, endereco_USUARIO = ?, senha_USUARIO= ? where codigo_USUARIO = ?";
		try {
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLupdateUsuario);
			myStmt.setString(1, usuario.getEmail());
			myStmt.setString(2, usuario.getTelefone());
			myStmt.setString(3, usuario.getEndereco());
			myStmt.setString(4, usuario.getSenha());
			myStmt.setInt(5, usuario.getId());
			myStmt.executeUpdate();
			con.close();
			System.out.println("updateUsuario()");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em updateUsuario()");
		}
	}
	
	public void ocupaAssento(int nro) {
		String SQLupdateVoo = "update voos set assentosVazios_VOOS = assentosVazios_VOOS - 1 where codigo_VOOS = ?";
		try {
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLupdateVoo);
			myStmt.setInt(1, nro);
			myStmt.executeUpdate();
			con.close();
			System.out.println("updateVoo()");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em updateVoo()");
		}
	}
	
	public void liberaAssento(int nro) {
		String SQLupdateVoo = "update voos set assentosVazios_VOOS = assentosVazios_VOOS + 1 where codigo_VOOS = ?";
		try {
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLupdateVoo);
			myStmt.setInt(1, nro);
			myStmt.executeUpdate();
			con.close();
			System.out.println("liberaAssento()");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em liberaAssento()");
		}
	}

	public void deleteReserva(Reserva reserva) {
		reserva = readReserva(reserva.getKey());
		String SQLdeleteReserva = "delete from reservas where codigo_RESERVA=?";
		try {
			Connection con = conectar();
			PreparedStatement myStmt = con.prepareStatement(SQLdeleteReserva);
			myStmt.setInt(1, reserva.getKey());
			myStmt.executeUpdate();
			con.close();
			liberaAssento(reserva.getNroVoo());
			System.out.println("deleteReserva()");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("erro em deleteReserva()");
		}
	}

}
