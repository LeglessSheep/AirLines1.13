package com.airlines.control;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.airlines.DAO.AeronaveDAO;
import com.airlines.DAO.ClienteDAO;
import com.airlines.DAO.LoginDAO;
import com.airlines.beans.Cliente;
import com.airlines.beans.Login;
import com.airlines.factory.DAOFactory;

public class ControleCliente {
	
	public ControleCliente() {
	}

	
	
	
	public static void cadastrar(Cliente a){
		
		try{
			ClienteDAO dao= DAOFactory.getDAOFactory().getClienteDAO();
			if(validarCliente(a)){
				dao.create(a);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	public static void cadastrarEmail(Cliente a, String senha){
		
		try{
			ClienteDAO dao= DAOFactory.getDAOFactory().getClienteDAO();
			if(validarCliente(a)){
				dao.create(a);
				int c = dao.findUltimo();
				LoginDAO daol = DAOFactory.getDAOFactory().getLoginDAO();
				Login login = new Login(a.getEmail(), senha);
				daol.create(login, c);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static boolean validarCodCliente(int codigo) throws Exception
	{	
		if(codigo > 0)
			return true;
		else return false;
	}
	
	public static boolean validarNome(String nome) throws Exception
	{
		Pattern regex = Pattern.compile("^[A-Za-zÀ-Üà-ü\\s]{3,30}$");
		Matcher m = regex.matcher(nome);
			if( !m.matches() && nome.length() <= 0)
				return false;
			else
				return true;
	}
	
	public static boolean validarSobrenome(String sobrenome) throws Exception
	{
		Pattern regex = Pattern.compile("^[A-Za-zÀ-Üà-ü\\s]{3,30}$");
		Matcher m = regex.matcher(sobrenome);
		if(! m.matches() )
			return false;
		else
			return true;
	}
	
	public static String validarFormatarDtNascimento(String dtNascimento)
	{
		Calendar c = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try{
			c.setTime(sdf.parse(dtNascimento));
		}
		
		catch(Exception e){
			System.out.println("Erro inesperado");
			e.printStackTrace();
			return null;
		}
		return sdf.format(c.getTime());
	}
	
	public static boolean validarEmail(String email) throws Exception
	{
		Pattern regex = Pattern.compile("^[a-z0-9-_.]+[@]+[a-z.]{6,30}$");
		Matcher m = regex.matcher(email);
		if( ! m.matches() && email.length() <= 0 )
			return false;	
		else
			return true;
	}
	
	public static boolean validarDDD(int ddd) throws Exception
	{
			if(ddd > 10 && ddd < 100) return true;
		return false;
	}
	
	public static boolean validarTelefone(int i) throws Exception
	{
		try {
			String c = String.valueOf(i);
			if(i > 0 && c.length() == 9 || c.length() == 8) return true;
		} catch (Exception e) {
			return false;
		}
		return false;
	}
	
	public static boolean validarTamanho(Cliente cliente)
	{
		if(cliente.getNome().length() > 0 && cliente.getSobrenome().length() > 0 &&
				cliente.getEmail().length() > 0 && cliente.getDdd() > 0 && cliente.getCelular() > 0)
		{
			return true;
		}
		
		return false;
	}
	
	
	public static boolean validarCliente(Cliente c){
		
		try{
			if( validarNome(c.getNome())	||	validarSobrenome(c.getSobrenome()) 		||
				validarTamanho(c) 			||	validarDDD(c.getDdd())					||
				validarEmail(c.getEmail())	||	validarTelefone(c.getCelular()))
				
				return true;
		}
		
		catch(NullPointerException e){
			return false;
		}
		
		catch(Exception e){
			System.out.println("**********Erro inesperado***********");
			return false;
		}
		
		
		return true;
	}




	public static Cliente consultar(int pesquisa) {
		Cliente c= null;
		try{
		
			ClienteDAO dao= DAOFactory.getDAOFactory().getClienteDAO();
			if(pesquisa > 0){
				c = dao.findByCodigo(pesquisa);
			}
		}
		catch(Exception e){
			
		}
		return c;
	}




	public static void alterar(Cliente a) {
		
		try{
			ClienteDAO dao= DAOFactory.getDAOFactory().getClienteDAO();
			if(validarCliente(a) && validarCodCliente(a.getCodCliente())){
				dao.update(a);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}




	public static boolean deletar(int a) {
		try{
			ClienteDAO dao= DAOFactory.getDAOFactory().getClienteDAO();
			if(a > 0){
				dao.delete(a);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
		
	}
}
