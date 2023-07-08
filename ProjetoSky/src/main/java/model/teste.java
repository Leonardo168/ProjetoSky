package model;

import java.util.ArrayList;

import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

public class teste {

	public static void main(String[] args) {
		DAO dao = new DAO();
//		int id = 2;

//		Usuario usuario = new Usuario();
//		usuario.setNome("nome"+id);
//		usuario.setEmail("email"+id);
//		usuario.setCpf("cpf"+id);
//		usuario.setTelefone("telefone"+id);
//		usuario.setSenha("senha"+id);
//		dao.createUsuario(usuario);

//		Reserva reserva = new Reserva();
//		reserva.setNroVoo(1);
//		reserva.setIdusuario(5);
//		dao.createReserva(reserva);

//		Usuario usuario = new Usuario();
//		usuario.setId(1);
//		dao.readUsuario(usuario);
//		System.out.println(usuario.getNome());
//		System.out.println(usuario.getEmail());
//		System.out.println(usuario.getCpf());
//		System.out.println(usuario.getTelefone());
//		System.out.println(usuario.getSenha());
		

//		Usuario usuario = new Usuario();
//		usuario.setId(id);
//		usuario.setEmail("novoEmail"+id);
//		usuario.setTelefone("novoTelefone"+id);
//		dao.updateUsuario(usuario);

//		ArrayList<Reserva> lista = dao.listaReservas(5);
//		for (int i = 0; i < lista.size(); i++) {
//			System.out.println(lista.get(i).getKey());
//			System.out.println(lista.get(i).getNroVoo());
//			System.out.println(lista.get(i).getIdusuario());
//			System.out.println("");
//		}

//		ArrayList<Voo> listaVoo = dao.listaVoo(3);
//		for (int i = 0; i < listaVoo.size(); i++) {
//			System.out.println(listaVoo.get(i).getNro());
//			System.out.println(listaVoo.get(i).getAssentosVagos());
//			System.out.println(listaVoo.get(i).getOrigem());
//			System.out.println(listaVoo.get(i).getDestino());
//			System.out.println(listaVoo.get(i).getData());
//			System.out.println("");
//		}

//		Voo voo = new Voo();
//		voo.setOrigem("3");
//		voo.setDestino("4");
//		voo.setData("5");
//		voo.setAssentosVagos(1);
//		ArrayList<Voo> buscaVoo = dao.buscaVoo(voo);
//		for (int i = 0; i < buscaVoo.size(); i++) {
//			System.out.println(buscaVoo.get(i).getNro());
//			System.out.println(buscaVoo.get(i).getAssentosVagos());
//			System.out.println(buscaVoo.get(i).getOrigem());
//			System.out.println(buscaVoo.get(i).getDestino());
//			System.out.println(buscaVoo.get(i).getData());
//			System.out.println("");
//		}
		
//		dao.ocupaAssento(5);
//		dao.liberaAssento(5);
		
//		Voo voo = dao.readVoo(9);
//		System.out.println(voo.getNro());
//		System.out.println(voo.getAssentosVagos());
//		System.out.println(voo.getOrigem());
//		System.out.println(voo.getDestino());
//		System.out.println(voo.getData());
		
//		Reserva reserva = new Reserva();
//		reserva.setKey(1);
//		dao.deleteReserva(reserva);
		
//		Reserva reserva = dao.readReserva(1);
//		System.out.println(reserva.getKey());
//		System.out.println(reserva.getNroVoo());
//		System.out.println(reserva.getIdusuario());
		
		Usuario usuario = new Usuario();
		usuario.setCpf("cpf2");
		usuario.setSenha("senha2");
		dao.readLoginUsuario(usuario);
		System.out.println(usuario.getId());
		System.out.println(usuario.getNome());
		System.out.println(usuario.getEmail());
		System.out.println(usuario.getCpf());
		System.out.println(usuario.getTelefone());
		System.out.println(usuario.getSenha());
	}
}
