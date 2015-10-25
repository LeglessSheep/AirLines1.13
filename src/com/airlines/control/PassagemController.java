package com.airlines.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airlines.beans.Cliente;
import com.airlines.beans.Passagem;

/**
 * Servlet implementation class PassagemController
 */
@WebServlet("/PassagemController")
public class PassagemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PassagemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String controle = request.getParameter("consultaPassagem");
		Passagem p = null;
		if(controle.equals("consultaPassagem")){
			p = new Passagem();
			int codigo = Integer.parseInt(request.getParameter("optionIda"));
			p = ControlePassagem.dadosCompra(codigo);
		}
		request.setAttribute("passagem", p);
		int qa = Integer.parseInt(request.getParameter("qtdA"));
		int qb = Integer.parseInt(request.getParameter("qtdB"));
		int qc = Integer.parseInt(request.getParameter("qtdC"));
		request.setAttribute("qtdA",qa);
		request.setAttribute("qtdB", qb);
		request.setAttribute("qtdC", qc);
		request.getRequestDispatcher("/areaLogada/compra.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
