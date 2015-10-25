package com.airlines.mysqlDAO;

import com.airlines.DAO.ClienteDAO;
import com.airlines.DAO.PassagemDAO;
import com.airlines.DAO.VooDAO;
import com.airlines.beans.Passagem;
import com.airlines.beans.Voo;
import com.airlines.factory.ConnectionFactoryMySQL;
import com.airlines.factory.DAOFactory;

public class PassagemDAOMySQL extends PassagemDAO{

			//Método para gravar um registro de um Cliente na base de dados  
			public  void create(int voo, int assentos) throws Exception
			{
				//abrir conexão
				int a = 0;
				int cod = 0;
				Passagem p = new Passagem();
				double preco = Math.random() * 10000;
				p.setPreco(preco);
				preco =  Math.random() * 100;
				p.setTaxa(preco);
				for(int i = 1; i <= assentos; i++){
					
					p.setCodigoPassagem(proximoCodigo());		
					stmt = con.prepareStatement("insert into tabPassagem values(?, ?, null, ?, ?, ?)");  
					stmt.setInt		(1, p.getCodigoPassagem());
					stmt.setInt		(2, voo);                                               
					stmt.setDouble 	(3, p.getPreco());
					stmt.setInt		(4, i);
					stmt.setDouble 	(5, p.getTaxa());
				
					stmt.execute(); //executar
					stmt = null;
				}
					con.close(); //fechar conexão
			}
			
			//Método para atualizar registro de Cliente na base de dados  
			public  void update(int passagem, int cliente) throws Exception
			{      
				
			}     
			
			//Método para obter 1 registro de uma Passagem pelo codigo  
			public  Passagem findByCodigo(Integer cod_Passagem) throws Exception
			{      
				con = ConnectionFactoryMySQL.conectar();     
				stmt = con.prepareStatement("select * from tabPassagem where paCod_Passagem = ?");
				stmt.setInt(1, cod_Passagem);   
				rs = stmt.executeQuery();      
				Passagem p = null; //sem espaço de memória
				 
				if(rs.next())
				{ 
					//verifica se o ResultSet       
					//obteve algum registro        
					p = new Passagem( rs.getInt("paCod_Passagem"), rs.getDouble("paPreco"), 
										rs.getInt("paAssento"), rs.getInt("paTaxa"));
					
					int codvoo = rs.getInt("pafkCod_Voo");
					int codcliente = rs.getInt("pafkCod_Cliente");
					ClienteDAO cliente = DAOFactory.getDAOFactory().getClienteDAO();
					p.setCliente(cliente.findByCodigo(codcliente));
					con = ConnectionFactoryMySQL.conectar();     
					VooDAO voo = DAOFactory.getDAOFactory().getVooDAO();
					p.setVoo(voo.findByCodigo(codvoo));
				}     
				con.close();      
				//retornando o objeto Passagem 
				return p;  
			}
			
			public static void main(String[] args) {
				
				PassagemDAO dao = DAOFactory.getDAOFactory().getPassagemDAO();
				try{
					dao.create(10, 6);
				}
				
				catch(Exception e){
					e.printStackTrace();
				}
			}
			
			public int proximoCodigo() throws Exception
			{   
				con = ConnectionFactoryMySQL.conectar();     
				stmt = con.prepareStatement("select COUNT(paCod_Passagem) from tabPassagem");
				rs = stmt.executeQuery();
				rs.next();
				int proximo = rs.getInt(1); 
				return proximo+1;
			}
	}


