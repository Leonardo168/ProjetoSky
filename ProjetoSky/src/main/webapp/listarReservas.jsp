<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Voo"%>
<%@ page import="model.Reserva"%>
<%@ page import="java.util.ArrayList"%>
<%
	@SuppressWarnings("unchecked")
	ArrayList<Voo> listaVoos = (ArrayList<Voo>) request.getAttribute("vooReservas");
	ArrayList<Reserva> listaReservas = (ArrayList<Reserva>) request.getAttribute("Reservas");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="tabela">
		<tbody>
			<%
			for (int i = 0; i < listaVoos.size(); i++) {
			%>
			<tr>
				<td><%=listaVoos.get(i).getNro()%></td>
				<td><%=listaVoos.get(i).getAssentosVagos()%></td>
				<td><%=listaVoos.get(i).getOrigem()%></td>
				<td><%=listaVoos.get(i).getDestino()%></td>
				<td><%=listaVoos.get(i).getData()%></td>
				<td><a href="deletarReserva?key=<%=listaReservas.get(i).getKey()%>">Deletar</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>