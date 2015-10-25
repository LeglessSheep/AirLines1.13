package com.airlines.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airlines.TO.AeronaveTO;
import com.airlines.beans.Aeronave;

/**
 * Servlet implementation class AeronaveController
 */
@WebServlet("/AeronaveController")
public class AeronaveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AeronaveController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AeronaveTO to = null;
		
		String pesquisa = request.getParameter("codAeronave");
		to 	= ControleAeronave.consultar(pesquisa);
		
		if(to == null || to.getAeronaves().size() == 0){
			request.setAttribute("mensagem", "Aeronave não encontrada");
		}
		
		request.setAttribute("aeronaves", to);
		
		request.getRequestDispatcher("/areaLogada/aeronave.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String controle = request.getParameter("controle");
		if(controle.equals("cadastrar")){
			
			Aeronave a = new Aeronave();
			a.setModelo(request.getParameter("modelo"));
			a.setNome("Juan");
			a.setQtPassageiros(Integer.parseInt(request.getParameter("qtd")));
			a.setTipo(request.getParameter("tipo"));
			
			ControleAeronave.cadastrar(a);
			
			request.setAttribute("mensagem", "Sucesso!");
			request.getRequestDispatcher("/areaLogada/aeronave.jsp").forward(request, response);
		}
		
		
		else if (controle.equals("alterar")){
			Aeronave a = new Aeronave();
			a.setModelo(request.getParameter("modelo"));
			a.setNome("Juan");
			a.setQtPassageiros(Integer.parseInt(request.getParameter("qtd")));
			a.setTipo(request.getParameter("tipo"));
			a.setCodigo(Integer.parseInt(request.getParameter("codAeronave")));
			
			ControleAeronave.alterar(a);
			
			request.setAttribute("mensagem", "Sucesso!");
			request.getRequestDispatcher("/areaLogada/aeronave.jsp").forward(request, response);
		}
		
		else if (controle.equals("deletar")){
			int a=0 ;
			if(request.getParameter("codAeronave") != null)
			a= Integer.parseInt(request.getParameter("codAeronave"));
			
			ControleAeronave.deletar(a);
			
			request.setAttribute("mensagem", "Sucesso!");
			request.getRequestDispatcher("/areaLogada/aeronave.jsp").forward(request, response);
		}
		
	}

}
