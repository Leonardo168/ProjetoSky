package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.Reserva;
import model.Usuario;
import model.Voo;

/**
 * Servlet implementation class Controller
 */
@WebServlet(urlPatterns = {"/Controller", "/verificarLogin","/login", "/logout", "/cadastraUsuario", "/buscaVoo", "/reservar",
		"/listarReservas", "/deletarReserva", "/lerUsuario","/updateUsuario"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao = new DAO();
	Reserva reserva = new Reserva();
	Usuario usuario = new Usuario();
	Voo voo = new Voo();
	int login = 0;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println("\ndoGet()"+action);
		if (action.equals("/verificarLogin")) {
			if(login == 1) {
				response.sendRedirect("listarReservas");
			} else {
				response.sendRedirect("login.jsp");
			}
		} else if (action.equals("/login")) {
			login(request, response);
		} else if (action.equals("/logout")) {
			logout(request, response);
		} else if (action.equals("/cadastraUsuario")) {
			cadastro(request, response);
		} else if (action.equals("/buscaVoo")) {
			buscaVoo(request, response);
		} else if (action.equals("/reservar")) {
			if (login == 1) {
				reservar(request, response);
			}
			else {
				response.sendRedirect("login.jsp");
			}
		} else if (action.equals("/listarReservas")) {
			listarReservas(request, response);
		} else if (action.equals("/deletarReserva")) {
			deletarReserva(request, response);
		} else if (action.equals("/lerUsuario")) {
			lerUsuario(request, response);
		} else if (action.equals("/updateUsuario")) {
			updateUsuario(request, response);
		} else {
			response.sendRedirect("teste.jsp");
		}
	}

	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		usuario.setEmail(request.getParameter("HTML_email_USUARIO"));
		usuario.setSenha(request.getParameter("HTML_senha_USUARIO"));
		dao.readLoginUsuario(usuario);
		if (usuario.getId() == 0) {
			System.out.println("usuario não encontrado");
			response.sendRedirect("login.jsp");
		} else {
			login = 1;
			response.sendRedirect("listarReservas");
		}
	}

	protected void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (login == 1) {
			login = 0;
			usuario.setId(0);
			response.sendRedirect("login.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	}

	protected void cadastro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		usuario.setNome(request.getParameter("HTML_nome_USUARIO"));
		usuario.setEmail(request.getParameter("HTML_email_USUARIO"));
		usuario.setCpf(request.getParameter("HTML_cpf_USUARIO"));
		usuario.setTelefone(request.getParameter("HTML_telefone_USUARIO"));
		usuario.setEndereco(request.getParameter("HTML_endereco_USUARIO"));
		usuario.setSenha(request.getParameter("HTML_password_USUARIO"));
		dao.createUsuario(usuario);
		response.sendRedirect("login.jsp");
	}

	protected void buscaVoo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		voo.setOrigem(request.getParameter("HTML_localorigem_VOO"));
		voo.setDestino(request.getParameter("HTML_localdestino_VOO"));
		voo.setData(request.getParameter("HTML_data_VOO"));
		voo.setAssentosVagos(Integer.parseInt(request.getParameter("HTML_quantidadePassageiro_VOO")));
		ArrayList<Voo> lista = dao.buscaVoo(voo);
		
		System.out.println(lista.size());
		if (lista.size()==0) {
			response.sendRedirect("index.jsp");
		} else {
			request.setAttribute("voosBusca", lista);
			RequestDispatcher rd = request.getRequestDispatcher("passagens.jsp");
			rd.forward(request, response);
		}
	}

	protected void reservar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		reserva.setIdusuario(usuario.getId());
		reserva.setNroVoo(Integer.parseInt(request.getParameter("nro")));
		dao.readVoo(reserva.getNroVoo());
		if (voo.getAssentosVagos()>=1) {
			dao.createReserva(reserva);
		}
		response.sendRedirect("index.jsp");
	}

	protected void listarReservas(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Voo> listaVoos = dao.listaVoo(usuario.getId());
		ArrayList<Reserva> listaReserva = dao.listaReservas(usuario.getId());
		request.setAttribute("vooReservas", listaVoos);
		request.setAttribute("Reservas", listaReserva);
		RequestDispatcher rd = request.getRequestDispatcher("Dashboard-reservas.jsp");
		rd.forward(request, response);
	}
	
	protected void deletarReserva(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		reserva.setKey(Integer.parseInt(request.getParameter("key")));
		dao.deleteReserva(reserva);
		response.sendRedirect("listarReservas");
	}

	protected void lerUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		dao.readUsuario(usuario);
		request.setAttribute("HTML_nome_USUARIO", usuario.getNome());
		request.setAttribute("HTML_email_USUARIO", usuario.getEmail());
		request.setAttribute("HTML_cpf_USUARIO", usuario.getCpf());
		request.setAttribute("HTML_telefone_USUARIO", usuario.getTelefone());
		request.setAttribute("HTML_endereco_USUARIO", usuario.getEndereco());
		request.setAttribute("HTML_password_USUARIO", usuario.getSenha());
		RequestDispatcher rd = request.getRequestDispatcher("Dashboard-account.jsp");
		rd.forward(request, response);
	}
	
	protected void updateUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		usuario.setEmail(request.getParameter("HTML_email_USUARIO"));
		usuario.setTelefone(request.getParameter("HTML_telefone_USUARIO"));
		usuario.setEndereco(request.getParameter("HTML_endereco_USUARIO"));
		usuario.setSenha(request.getParameter("HTML_password_USUARIO"));

		dao.updateUsuario(usuario);
		
		response.sendRedirect("lerUsuario");
	}
}
