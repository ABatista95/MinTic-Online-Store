package com.tienda.DAO;

import java.sql.*;
public class Conexion {
	
	//static String bd = "grupo37_equipo1";
    //static String login = "admin";
    //static String password = "Admin123$";
    //static String url = "jdbc:mysql://camiloc2.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/"+bd;
    
    static String bd = "tienda";
    static String login = "root";
    static String password = "Proyectomintic1*";
    static String url = "jdbc:mysql://localhost:3306/"+bd;
    
    //Zona::  ?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC
    
    Connection connection = null;
    
    public Conexion() {
        try{
           //obtenemos el driver de para mysql
           //Class.forName("com.mysql.cj.jdbc.Driver");  //-- Drive para Mysql
           Class.forName("org.mariadb.jdbc.Driver");  //-- Drive para MariaDB
           //obtenemos la conexión
           connection = DriverManager.getConnection(url,login,password);
           if (connection!=null){
              System.out.println("Conexión a base de datos "+bd+" OK\n");
           }else {
               System.out.println("No se pudo conectar a la base de datos");
           }
        }
        catch(SQLException e){
           System.out.println(e);
        }catch(ClassNotFoundException e){
           System.out.println(e);
        }catch(Exception e){
           System.out.println(e);
        }
     }
    
    	public Connection getConnection(){
        return connection;
     }
    	public void desconectar(){
        connection = null;
     }


}
