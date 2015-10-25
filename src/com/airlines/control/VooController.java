package com.airlines.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airlines.DAO.VooDAO;
import com.airlines.TO.VooTO;
import com.airlines.beans.Voo;
import com.airlines.factory.DAOFactory;

import util.DateFormatter;

/**
 * Servlet implementation class VooController
 */
@WebServlet("/VooController")
public class VooController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VooController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String controle = request.getParameter("pesquisa");
		System.out.println(controle);
		if(controle.equals("pesquisa")){
			Voo a = null;
			int codigo = Integer.parseInt(request.getParameter("codigo"));
			a = ControleVoo.consultar(codigo);
			if(a.getCodigo() < 0){
				request.setAttribute("mensagem", "Voo não encontrado!");
				request.getRequestDispatcher("/areaLogada/voo.jsp").forward(request, response);
			}
			else{
				request.setAttribute("voo", a);
				request.getRequestDispatcher("/areaLogada/voo.jsp").forward(request, response);
			}
		}
		else if(controle.equals("pesquisaVoos")){
			String origem = request.getParameter("origem");
			String destino = request.getParameter("destino");
			String data = request.getParameter("data");
			int passageiros = Integer.parseInt(request.getParameter("qtdA"));
			passageiros+=  Integer.parseInt(request.getParameter("qtdC"));
			passageiros+=  Integer.parseInt(request.getParameter("qtdB"));
					
			VooTO to = ControleVoo.consultarVoos(origem, destino, data);
			
			request.setAttribute("voos", to);
			request.setAttribute("passageiros", passageiros);
			request.getRequestDispatcher("/areaLogada/resultados-de-voos.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String controle = request.getParameter("controle");
		
		if(controle.equals("cadastrar")){
			
			Voo a = new Voo();
			
			a.setCodigoAeronave(Integer.parseInt(request.getParameter("codAeronave")));
			
			String dataIda = request.getParameter("dtIda");
			String dataChegada = request.getParameter("dtChegada");
			String horaIda = request.getParameter("horaIda");
			String horaChegada = request.getParameter("horaChegada");
			
			a.setDataHoraSaida(DateFormatter.concatenarDataHora(dataIda, horaIda));
			a.setDataHoraChegada(DateFormatter.concatenarDataHora(dataChegada, horaChegada));
			
			a.setDestino(request.getParameter("destino"));
			a.setOrigem(request.getParameter("origem"));
			
			a.setSituacao(request.getParameter("situacao"));
			
			ControleVoo.cadastrar(a);
		
			request.setAttribute("mensagem", "Sucesso!");
			request.getRequestDispatcher("/areaLogada/voo.jsp").forward(request, response);
		}
		
		else if(controle.equals("alterar")){
			
			Voo a = new Voo();
			a.setCodigo(Integer.parseInt(request.getParameter("codVoo")));
			a.setCodigoAeronave(Integer.parseInt(request.getParameter("codAeronave")));
			
			String dataIda = request.getParameter("dtIda");
			String dataChegada = request.getParameter("dtChegada");
			String horaIda = request.getParameter("horaIda");
			String horaChegada = request.getParameter("horaChegada");		
	

			a.setDataHoraSaida(DateFormatter.concatenarDataHora(dataIda, horaIda));
			a.setDataHoraChegada(DateFormatter.concatenarDataHora(dataChegada, horaChegada));
			
			a.setDestino(request.getParameter("destino"));
			a.setOrigem(request.getParameter("origem"));
			
			a.setSituacao(request.getParameter("situacao"));
			
			ControleVoo.alterar(a);
		
			request.setAttribute("mensagem", "Sucesso!");
			request.getRequestDispatcher("/areaLogada/voo.jsp").forward(request, response);
		}
		
		else if(controle.equals("deletar")){
			int a=0;
			if(request.getParameter("codVoo") != null)
			a= Integer.parseInt(request.getParameter("codVoo"));
			
			String mensagem = ControleVoo.deletar(a);
			System.out.println(mensagem);
			
			request.setAttribute("mensagem", mensagem);
			request.getRequestDispatcher("/areaLogada/voo.jsp").forward(request, response);
		}
	}

}
