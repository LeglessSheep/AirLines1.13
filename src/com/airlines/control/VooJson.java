package com.airlines.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airlines.DAO.VooDAO;
import com.airlines.TO.VooTO;
import com.airlines.factory.DAOFactory;

import util.DateFormatter;

/**
 * Servlet implementation class VooJson
 */
@WebServlet("/VooJson")
public class VooJson extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VooJson() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		VooTO v = new VooTO();
		String lista = "";
		try{
			VooDAO dao = DAOFactory.getDAOFactory().getVooDAO();
			String dataFormatada = DateFormatter.formatarData(request.getParameter("data"));
			v = dao.findByOrigemDestinoData(request.getParameter("origem"),request.getParameter("destino") , dataFormatada);
			lista = ControleJSONVoo.listToJSon(v);
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		out.println(lista);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
