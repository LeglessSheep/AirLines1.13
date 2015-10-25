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
				Passagem p = new Passagem();
				double preco = Math.random() * 10000;
				p.setPreco(preco);
				preco =  Math.random() * 100;
				p.setTaxa(preco);
				for(int i = 1; i <= assentos; i++){
					
					p.setCodigoPassagem(proximoCodigo());		
					stmt = con.prepareStatement("insert into tabPassagem values(?, ?, null, ?, ?, ?, 1)");  
					stmt.setInt		(1, p.getCodigoPassagem());
					stmt.setInt		(2, voo);                                               
					stmt.setDouble 	(3, p.getPreco());
					stmt.setInt		(4, i);
					stmt.setDouble 	(5, p.getTaxa());
				
					stmt.execute(); //executar

				}
					con.close(); //fechar conexão
			}
			
			//Método para atualizar registro de Cliente na base de dados  
			public  void update(Passagem p) throws Exception
			{      
				con = ConnectionFactoryMySQL.conectar();  
				int proxCodigo = proximaPassagemDisponivel(p.getVoo().getCodigo());
				stmt = con.prepareStatement("UPDATE tabpassagem SET pafkCod_Cliente = ?,paTipoPassageiro=? WHERE pafkCod_Voo = ? AND paCod_Passagem = ?");
				stmt.setInt(1, p.getCliente().getCodCliente());
				stmt.setInt(2, p.getTipo());
				stmt.setInt(3, p.getVoo().getCodigo());
				stmt.setInt(4, proxCodigo);
				stmt.executeUpdate();
				con.close();
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
			
			
			//Método para obter 1 registro de uma Passagem pelo codigo  
			public  Passagem findByVoo(Integer codvoo) throws Exception
			{      
				con = ConnectionFactoryMySQL.conectar();     
				stmt = con.prepareStatement("select * from tabPassagem where pafkCod_Voo = ? AND pafkCod_Cliente IS NULL");
				stmt.setInt(1, codvoo);   
				rs = stmt.executeQuery();      
				Passagem p = null; //sem espaço de memória
				 
				if(rs.next())
				{ 
					//verifica se o ResultSet       
					//obteve algum registro        
					p = new Passagem( rs.getInt("paCod_Passagem"), rs.getDouble("paPreco"), 
										rs.getInt("paAssento"), rs.getInt("paTaxa"));
					
					int codigo_voo = rs.getInt("pafkCod_Voo");
					con = ConnectionFactoryMySQL.conectar();     
					VooDAO voo = DAOFactory.getDAOFactory().getVooDAO();
					p.setVoo(voo.findByCodigo(codigo_voo));
					System.out.println(p.getVoo());
					System.out.println(p);
				}     
				con.close();      
				//retornando o objeto Passagem 
				return p;  
			}
			
			public static void main(String[] args) {
				
				PassagemDAO dao = DAOFactory.getDAOFactory().getPassagemDAO();
				try{
					//dao.create(10, 6);
					dao.findByVoo(10);
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
			
			public int proximaPassagemDisponivel(int voo) throws Exception{     
				stmt = con.prepareStatement("select MIN(paCod_Passagem) as min from tabPassagem where pafkCod_Voo = ? AND pafkCod_Cliente is null?");
				stmt.setInt(1, voo);
				rs = stmt.executeQuery();
				rs.next();
				int proxima = rs.getInt("min");
				return proxima;
			}
	}


