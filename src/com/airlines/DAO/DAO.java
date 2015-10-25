package com.airlines.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAO {

	//Atributos    
		//Realizar conexão com a base de dados   
		//(abrir e fechar conexão)  
		protected static Connection con;
		
		//Executar comandos em linguagem SQL na base de dados  
		protected static PreparedStatement stmt;
		
		//Ler e resgatar dados de consultas feitas na base  
		protected static ResultSet rs;
		
		//Executar stored procedures na base de dados (futuro...)  
		protected CallableStatement call; 
		
		//Método para abrir uma conexão com a base de dados  
		protected static void openConnect() throws Exception
		{      
			//Caminho do Driver do MySql contido no .jar   
			Class.forName("com.mysql.jdbc.Driver");    
			//Classe dentro do .jar      
			con = DriverManager.getConnection   ("jdbc:mysql://localhost:3306/Alunos", "alunos", "alunos");    
		}    
		
		//Método para fechar conexão com a base de dados  
		protected static void closeConnect() throws Exception
		{   
			con.close(); //conexão fechada!  
		} 

}
