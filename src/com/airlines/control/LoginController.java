package com.airlines.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airlines.DAO.LoginDAO;
import com.airlines.beans.Cliente;
import com.airlines.beans.Login;
import com.airlines.factory.DAOFactory;

/**
 * Servlet implementation class ControleLogin
 */
@WebServlet("/ControleLogin")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String log = request.getParameter("user-email");
		String senha = request.getParameter("user-pw");
		System.out.println(log + senha);
		Login login = new Login(log, senha);
		
		LoginDAO loginDAO = DAOFactory.getDAOFactory().getLoginDAO();
		
		Cliente logado = loginDAO.logar(login);
		if(logado != null){
			System.out.println(logado);
			HttpSession s = request.getSession();
			s.setAttribute("logado", logado);
			System.out.println(s.getAttribute("logado"));
		}
		else System.out.println("Não Logado");
		response.sendRedirect("IndexLogin.jsp");
	}
}
