package com.airlines.mysqlDAO;

import com.airlines.DAO.AeronaveDAO;
import com.airlines.DAO.PassagemDAO;
import com.airlines.TO.AeronaveTO;
import com.airlines.beans.Aeronave;
import com.airlines.factory.ConnectionFactory;
import com.airlines.factory.DAOFactory;

public class AeronaveDAOMySQL extends AeronaveDAO{
	
	//Método para gravar um registro de uma Aeronave na base de dados  
		public void create(Aeronave a) throws Exception
		{
			
			//abrir conexão
			con = ConnectionFactory.conectar(); 
			stmt = con.prepareStatement("insert into tabAeronave values(null, ?, ?, ?, ?)");   
			stmt.setString	(1, a.getModelo());
			stmt.setString	(2, a.getNome());
			stmt.setString	(3, a.getTipo());
			stmt.setInt		(4, a.getQtPassageiros());
			
			stmt.execute(); //executar    
			con.close(); //fechar conexão
		}
		
		//Método para atualizar registro de Aeronave na base de dados  
		public void update(Aeronave a) throws Exception
		{      
			con = ConnectionFactory.conectar();     
			stmt = con.prepareStatement("update tabAeronave set aeModelo=?, aeNome=?, aeTipo=?, "
					+ "aeQtPassageiros=? where aeCod_Aeronave=?");   
			stmt.setString	(1, a.getModelo());   
			stmt.setString	(2, a.getNome());
			stmt.setString	(3, a.getTipo());
			stmt.setInt		(4, a.getQtPassageiros());
			stmt.setInt   	(5, a.getCodigo());
			
			stmt.executeUpdate(); //executar      
			con.close(); //fechar conexão
		}    
		
		//Método para excluir registro de uma Aeronave
		public void delete(Integer cod_Aeronave) throws Exception
		{      
			con = ConnectionFactory.conectar();      
			stmt = con.prepareStatement("delete from tabAeronave where aeCod_Aeronave = ?");   
			stmt.setInt(1, cod_Aeronave);   
//			stmt = con.prepareStatement("delete tabPassagem.* from tabPassagem INNER JOIN tabVoo on tabPassagem.pafkCod_Voo = tabVoo.voCod_Voo where tabVoo.vofkCod_Aeronave = ?");
//			stmt.setInt(1, cod_Aeronave);
//			stmt = con.prepareStatement("delete from tabVoo where vofkCod_Aeronave = ?");   
//			stmt.setInt(1, cod_Aeronave);
			stmt.execute(); //executar      
			con.close(); //fechar conexão
		}    
		
		//Método para obter 1 registro de uma Aeronave pelo codigo  
		public Aeronave findByCodigo(Integer cod_Aeronave) throws Exception
		{      
			con = ConnectionFactory.conectar();      
			stmt = con.prepareStatement("select * from tabAeronave where aeCod_Aeronave = ?");
			stmt.setInt(1, cod_Aeronave);   
			rs = stmt.executeQuery();      
			Aeronave a = null; //sem espaço de memória
			
			if(rs.next())
			{ 
				//verifica se o ResultSet       
				//obteve algum registro        
				a = new Aeronave( rs.getInt("aeCod_Aeronave"), rs.getString("aeModelo"), rs.getString("aeNome"), 
									rs.getString("aeTipo"), rs.getInt("aeQtPassageiros"));
				
			}     
			con.close(); //fechar conexão
			//retornando o objeto Aeronave 
			return a;  
		}

		public AeronaveTO findByName(String nome) throws Exception {
			
			con = ConnectionFactory.conectar();      
			stmt = con.prepareStatement("select * from tabAeronave where aeNome like  ?");
			stmt.setString(1,"%" + nome + "%");   
			rs = stmt.executeQuery();      
			AeronaveTO a = new AeronaveTO(); //sem espaço de memória
			Aeronave aeronave = null;
			while(rs.next())
			{ 
				//verifica se o ResultSet       
				//obteve algum registro        
				aeronave = new Aeronave( rs.getInt("aeCod_Aeronave"), rs.getString("aeModelo"), rs.getString("aeNome"), 
									rs.getString("aeTipo"), rs.getInt("aeQtPassageiros"));
				a.add(aeronave);
				
			}     
			con.close(); //fechar conexão
			//retornando o objeto Aeronave 
			return a;  
		}
		
		public int retornaAssentos(int cod_Aeronave) throws Exception{
			
			con = ConnectionFactory.conectar();      
			stmt = con.prepareStatement("select aeQtPassageiros from tabAeronave where aeCod_Aeronave = ?");
			stmt.setInt(1, cod_Aeronave);   
			rs = stmt.executeQuery();      
			int assentos = 0;
			//sem espaço de memória
			
			if(rs.next())
			{ 
				assentos = rs.getInt("aeQtPassageiros");
			}     
			con.close(); //fechar conexão
			//retornando o objeto Aeronave 
			return assentos;
		}

}
