package com.airlines.mysqlDAO;

import java.sql.Connection;
import java.sql.SQLException;

import com.airlines.DAO.ClienteDAO;
import com.airlines.DAO.LoginDAO;
import com.airlines.beans.Cliente;
import com.airlines.beans.Login;
import com.airlines.factory.ConnectionFactory;
import com.airlines.factory.DAOFactory;

//Faz as operacoes do banco mysql da parte de login
public class LoginDAOMySQL extends LoginDAO
{
	
	public LoginDAOMySQL() {
		// default
	}

	public  Cliente logar(Login login) {   
		boolean logado = false;
		Cliente c = null;
		try {
			
			con = ConnectionFactory.conectar();
			ClienteDAO dao = DAOFactory.getDAOFactory().getClienteDAO();
			
			//Verifica se o login existe
			stmt = con.prepareStatement("select count(*),cliente from tabLogin where login = md5(?) AND senha = md5(?);");
			stmt.setString(1,login.getLogin());   
			stmt.setString(2,login.getSenha());   
			rs = stmt.executeQuery();      
			
			if(rs.next()) {
				logado = (1 == rs.getInt(1));
				if(logado) c = dao.findByCodigo(rs.getInt(2));
				else return c;
			}
			
			con.close();    
			//retornando o objeto Aeronave 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return c;
		}  catch(Exception e){
			e.printStackTrace();
			return c;
		}
		
		return c;
		
	}

	@Override
	public void create(Login login, int cliente) {
		try {
			
			con = ConnectionFactory.conectar();
			
			//Verifica se o login existe
			stmt = con.prepareStatement("insert into tablogin values(md5(?), md5(?), ?)");
			stmt.setString(1,login.getLogin());   
			stmt.setString(2,login.getSenha());   
			stmt.setInt(3, cliente);
			stmt.execute();  
			
			con.close();    
			//retornando o objeto Aeronave 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
