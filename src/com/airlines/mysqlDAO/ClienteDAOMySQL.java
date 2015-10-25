package com.airlines.mysqlDAO;

import com.airlines.DAO.ClienteDAO;
import com.airlines.beans.Cliente;
import com.airlines.factory.ConnectionFactoryMySQL;
import com.airlines.factory.DAOFactory;

public class ClienteDAOMySQL extends ClienteDAO{


	//Método para gravar um registro de um Cliente na base de dados  
	public void create(Cliente c) throws Exception
	{
		con = ConnectionFactoryMySQL.conectar();
		
		//abrir conexão      
		stmt = con.prepareStatement("insert into tabCliente values(null, ?, ?, ?, ?, ?, ?, ?, ?)");   
		stmt.setString(1, c.getNome());   
		stmt.setString(2, c.getSobrenome());
		stmt.setString(3, c.getDtNascimento());
		stmt.setString(4, c.getTratamento());
		stmt.setString(5, c.getTipo());
		stmt.setString(6, c.getEmail());
		stmt.setInt	  (7, c.getDdd());
		stmt.setInt   (8, c.getCelular());
		
		stmt.execute(); //executar      
		con.close();
	}
	
	//Método para atualizar registro de Cliente na base de dados  
	public void update(Cliente c) throws Exception
	{      
		con = ConnectionFactoryMySQL.conectar();      
		stmt = con.prepareStatement("update tabCliente set clNome=?, clSobrenome=?, clDtNascimento=?, "
				+ "clTratamento=?, clTipo=?, clEmail=?, clDDD=?, clCelular =? where clCod_Cliente=?");   
		stmt.setString	(1, c.getNome());   
		stmt.setString	(2, c.getSobrenome());
		stmt.setString	(3, c.getDtNascimento());
		stmt.setString	(4, c.getTratamento());
		stmt.setString	(5, c.getTipo());
		stmt.setString	(6, c.getEmail());
		stmt.setInt		(7, c.getDdd());
		stmt.setInt		(8, c.getCelular());
		stmt.setInt		(9, c.getCodCliente());
		stmt.execute(); 
		//executar      
		con.close();  
	}    
	
	//Método para excluir registro de um cliente
	public void delete(Integer cod_Cliente) throws Exception
	{      
		con = ConnectionFactoryMySQL.conectar();      
		stmt = con.prepareStatement("delete from tabCliente where clCod_Cliente = ?");   
		stmt.setInt(1, cod_Cliente);   
		stmt.execute(); //executar      
		con.close();  
	}    
	
	//Método para obter 1 registro de um cliente pelo codigo  
	public Cliente findByCodigo(Integer cod_Cliente) throws Exception
	{      
		con = ConnectionFactoryMySQL.conectar();      
		stmt = con.prepareStatement("select * from tabCliente where clCod_Cliente = ?");
		stmt.setInt(1, cod_Cliente);   
		rs = stmt.executeQuery();      
		Cliente c = null;
		
		if(rs.next())
		{ 
			//verifica se o ResultSet       
			//obteve algum registro        
			c = new Cliente( rs.getInt("clCod_Cliente"), rs.getString("clNome"), rs.getString("clSobrenome"), 
								rs.getString("clDtNascimento"), rs.getString("clTratamento"), rs.getString("clTipo"),	
								rs.getString("clEmail"), rs.getInt("clDDD"), rs.getInt("clCelular"));
			
		}     
		con.close();      
		return c;  
	}
}
