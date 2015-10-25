package com.airlines.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airlines.TO.AeronaveTO;
import com.airlines.beans.Cliente;

/**
 * Servlet implementation class ClienteController
 */
@WebServlet("/ClienteController")
public class ClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClienteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Cliente c = null;
		
		String pesquisa = request.getParameter("codCliente");
		c 	= ControleCliente.consultar(Integer.parseInt(pesquisa));
		
		if(c == null){
			request.setAttribute("mensagem", "Cliente não encontrado");
		}
		
		request.setAttribute("cliente", c);
		
		request.getRequestDispatcher("cliente.jsp?").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String controle = request.getParameter("controle");
		if(controle.equals("cadastrar")){
			
			Cliente a = new Cliente();
			a.setNome(request.getParameter("nome"));
			a.setSobrenome(request.getParameter("sobrenome"));
			a.setDtNascimento(request.getParameter("dtNascimento"));
			a.setTratamento(request.getParameter("tratamento"));
			a.setTipo(request.getParameter("tipo"));
			a.setEmail(request.getParameter("e-mail"));
			String telefone = request.getParameter("telefone");
			System.out.println(telefone);
			System.out.println(telefone.substring(0,2));
			System.out.println(telefone.substring(2));
			a.setDdd(Integer.parseInt(telefone.substring(0,2)));
			a.setCelular(Integer.parseInt(telefone.substring(2)));
			
			ControleCliente.cadastrar(a);
			
			request.setAttribute("mensagem", "Sucesso!");
			request.getRequestDispatcher("cliente.jsp").forward(request, response);
		}
		
		else if(controle.equals("deletar")){
			
			int a = Integer.parseInt(request.getParameter("cod"));
	
			if(ControleCliente.deletar(a)){
				request.setAttribute("mensagem", "Sucesso!");
			}
			else request.setAttribute("mensagem", "Falha!");
			request.getRequestDispatcher("cliente.jsp").forward(request, response);
		}
		
		else if(controle.equals("alterar")){
			
			Cliente a = new Cliente();
			a.setCodCliente(Integer.parseInt(request.getParameter("cod")));
			a.setNome(request.getParameter("nome"));
			a.setSobrenome(request.getParameter("sobrenome"));
			a.setDtNascimento(request.getParameter("dtNascimento"));
			a.setTratamento(request.getParameter("tratamento"));
			a.setTipo(request.getParameter("tipo"));
			a.setEmail(request.getParameter("e-mail"));
			String telefone = request.getParameter("telefone");
			System.out.println(telefone);
			System.out.println(telefone.substring(0,2));
			System.out.println(telefone.substring(2));
			a.setDdd(Integer.parseInt(telefone.substring(0,2)));
			a.setCelular(Integer.parseInt(telefone.substring(2)));
			
			ControleCliente.alterar(a);
			
			request.setAttribute("mensagem", "Sucesso!");
			request.getRequestDispatcher("cliente.jsp").forward(request, response);
		}
	}

}
