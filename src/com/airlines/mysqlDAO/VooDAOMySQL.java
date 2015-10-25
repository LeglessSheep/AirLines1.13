package com.airlines.mysqlDAO;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.swing.JOptionPane;

import com.airlines.DAO.AeronaveDAO;
import com.airlines.DAO.VooDAO;
import com.airlines.TO.VooTO;
import com.airlines.beans.Voo;
import com.airlines.control.ControleVoo;
import com.airlines.factory.ConnectionFactory;
import com.airlines.factory.DAOFactory;

public class VooDAOMySQL extends VooDAO{

	//Método para gravar um registro de um Cliente na base de dados  
			public void create(Voo v) throws Exception
			{
				con = ConnectionFactory.conectar(); 
				//abrir conexão  
				stmt = con.prepareStatement("insert into tabVoo values(null, ?, ?, ?, ?, ?, ?)");  
				stmt.setInt		(1, v.getCodigoAeronave());                                                     
				stmt.setString	(2, v.getOrigem());
				stmt.setString	(3, v.getDestino());
				stmt.setString	(4, v.getDataHoraSaida());
				stmt.setString	(5, v.getDataHoraChegada());
				stmt.setString	(6, v.getSituacao());
				
				stmt.execute(); //executar      
				con.close();
			}
			
			//Método para atualizar registro de Cliente na base de dados  
			public  void update(Voo v) throws Exception
			{      
				con = ConnectionFactory.conectar();  
				stmt = con.prepareStatement("update tabVoo set vofkCod_Aeronave=?, voOrigem=?, "
						+ "voDestino=?, voDataHoraSaida=?, voDataHoraChegada=?, VoSituacao=? where voCod_Voo=?");   
				stmt.setInt		(1, v.getCodigoAeronave());   
				stmt.setString	(2, v.getOrigem());
				stmt.setString	(3, v.getDestino());
				stmt.setString	(4, v.getDataHoraSaida());
				stmt.setString	(5, v.getDataHoraChegada());
				stmt.setString	(6, v.getSituacao());
				stmt.setInt		(7, v.getCodigo());
				stmt.execute(); 
				//executar      
				con.close();
			}    
			
			//Método para excluir registro de um cliente
			public  int delete(Integer cod_Voo) throws Exception
			{      
				int c;
				if(ControleVoo.validaCodigo(cod_Voo)){
					con = ConnectionFactory.conectar();     
					stmt = con.prepareStatement("delete from tabVoo where voCod_Voo = ?");
					stmt.setInt(1, cod_Voo);
//					stmt = con.prepareStatement("delete from tabPassagem where paCod_Voo = ?");
//					stmt.setInt(1, cod_Voo);
					c = stmt.executeUpdate(); //executar 
					System.out.println(c);
					con.close();  
					return c;
				}
				else{
					JOptionPane.showMessageDialog(null, "Código inválido!");
					c = 50;
					return c;
				}
				
			}    
			
			//Método para obter 1 registro de um cliente pelo codigo  
			public  Voo findByCodigo(Integer cod_Voo) throws Exception
			{      
				con = ConnectionFactory.conectar();      
				stmt = con.prepareStatement("select * from tabVoo where voCod_Voo = ?");
				stmt.setInt(1, cod_Voo);   
				rs = stmt.executeQuery();      
				Voo v = null; //sem espaço de memória
				 
				if(rs.next())
				{ 
					//verifica se o ResultSet       
					//obteve algum registro        
					v = new Voo( rs.getInt("voCod_Voo"), rs.getString("voOrigem"), 
										rs.getString("voDestino"), rs.getString("voDataHoraSaida"), 
										rs.getString("voDataHoraChegada"), rs.getString("voSituacao"));
					
					v.setCodigoAeronave(rs.getInt("vofkCod_Aeronave"));
				}     
				con.close();  
				//retornando o objeto Cliente 
				return v;  
			}

			@Override
			public VooTO findByOrigemDestinoData(String origem, String destino, String data) throws Exception {
				con = ConnectionFactory.conectar();      
				stmt = con.prepareStatement("select v.* , COUNT(p.paCod_Passagem) as assentos from tabVoo as v join tabpassagem as p on v.voCod_Voo = p.pafkCod_Voo where p.pafkCod_Cliente is null AND v.voOrigem = ? AND v.voDestino = ? AND DATE_FORMAT(v.voDataHoraSaida,'%Y-%m-%d') = ? group by v.voCod_Voo");
				stmt.setString(1, origem);   
				stmt.setString(2, destino);   
				stmt.setString(3, data);
				rs = stmt.executeQuery();      
				Voo v = null; //sem espaço de memória
				VooTO to = new VooTO();
				while(rs.next())
				{ 
					//verifica se o ResultSet       
					//obteve algum registro        
					v = new Voo( rs.getInt("voCod_Voo"), rs.getString("voOrigem"), 
										rs.getString("voDestino"), rs.getString("voDataHoraSaida"), 
										rs.getString("voDataHoraChegada"), rs.getString("voSituacao"));
					v.setCodigoAeronave(rs.getInt("vofkCod_Aeronave"));
					v.setAssento(rs.getInt("assentos"));
					to.add(v);
					v = null;
				}     
				con.close();  
				//retornando o objeto Cliente 
				return to; 
			}
			
			
			
			private void registraAssentos() throws Exception{
				
				con = ConnectionFactory.conectar();      
				stmt = con.prepareStatement("select MAX(voCod_Voo) from tabVoo");
				rs = stmt.executeQuery();
				rs.next();
				int codVoo = rs.getInt(1);
				con = ConnectionFactory.conectar();      
				stmt = con.prepareStatement("select aeQtPassageiros from tabAeronave as a join tabvoo as v on v.vofkCod_Aeronave = a.aeCod_Aeronave where v.vofkCod_Aeronave = ?");
				AeronaveDAO daoAeronave = DAOFactory.getDAOFactory().getAeronaveDAO();
				
			}
			public static void main(String[] args) {
				
				VooDAO v = DAOFactory.getDAOFactory().getVooDAO();
				
				try{
					Voo voo = v.findByCodigo(3);
					System.out.println(voo);
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					  
					Calendar c = Calendar.getInstance();
					c.setTime(sdf.parse(voo.getDataHoraSaida().substring(0,18)));
					voo.setDataHoraSaida(sdf.format(c.getTime()));
					System.out.println(voo.getDataHoraSaida());
					System.out.println(voo.getOrigem());
					System.out.println(voo.getDestino());
					VooTO to = v.findByOrigemDestinoData(voo.getOrigem(), voo.getDestino(), voo.getDataHoraSaida());
					System.out.println(to.getVoos().get(0));
					System.out.println(to.getVoos().get(0).getAssento());
					
				}
				
				catch(Exception e){
					e.printStackTrace();
				}
			}
}
