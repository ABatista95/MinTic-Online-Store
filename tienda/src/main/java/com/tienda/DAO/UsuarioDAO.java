package com.tienda.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.tienda.DTO.UsuarioDTO;

public class UsuarioDAO {
	
	PreparedStatement preparedStatement;
	
	// Metodo para agregar.
	public void registrarUsuario(UsuarioDTO usuario) 
    {
	 System.out.println("Llego hasta a ca");
     Conexion conex= new Conexion();
     try {      
      Statement estatuto = conex.getConnection().createStatement();
      System.out.println("valor de cedula: "+usuario.getCedulaUsuario());
      estatuto.executeUpdate("INSERT INTO usuarios VALUES ('"+usuario.getCedulaUsuario()+"', '"
        +usuario.getEmailUsuario()+"', '"+usuario.getNombreUsuario()+"','"+usuario.getPassword()+"','"+usuario.getUsuario()+"')");
      //JOptionPane.showMessageDialog(null, "Se ha registrado Exitosamente","Información",JOptionPane.INFORMATION_MESSAGE);
      estatuto.close();
      conex.desconectar();
      System.out.println("Llego inserto");
      
     } catch (SQLException e) {
               System.out.println(e.getMessage());
     System.out.println( "No se Registro la persona");
     }
    }
	
	
	// Consulta usuario de manera individual.
	public ArrayList<UsuarioDTO> consultarUsuario(int documento) {
		System.out.println("Llego al metodo de consulta cliente.");
        ArrayList< UsuarioDTO> miUsuario = new ArrayList< UsuarioDTO>();
        Conexion conex= new Conexion();
        
        try {
            PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM usuarios WHERE cedula_usuario ="+ documento);
            ResultSet res = consulta.executeQuery();
            while(res.next()){
                UsuarioDTO usuario= new UsuarioDTO();
                   usuario.setCedulaUsuario(Integer.parseInt(res.getString("cedula_usuario")));
                   usuario.setEmailUsuario(res.getString("email_usuario"));
                   usuario.setNombreUsuario(res.getString("nombre_usuario"));
                   usuario.setPassword(res.getString("password"));
                   usuario.setUsuario(res.getString("usuario"));
           
                   miUsuario.add(usuario);
                   }
                   res.close();
                   consulta.close();
                   conex.desconectar();
            
           } catch (Exception e) {
        	   System.out.println("no se pudo consultar la Persona\n"+e);
           }
           return miUsuario;
       }
         
         
         // Listar usuarios
         public ArrayList<UsuarioDTO> listaDeUsuarios() {
             ArrayList< UsuarioDTO> miUsuario = new ArrayList< UsuarioDTO>();
             Conexion conex= new Conexion();
               
             try {
              PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM usuarios");
              ResultSet res = consulta.executeQuery();
              while(res.next()){
                  UsuarioDTO usuario= new UsuarioDTO();
                     usuario.setCedulaUsuario(Integer.parseInt(res.getString("cedula_usuario")));
                     usuario.setEmailUsuario(res.getString("email_usuario"));
                     usuario.setNombreUsuario(res.getString("nombre_usuario"));
                     usuario.setPassword(res.getString("password"));
                     usuario.setUsuario(res.getString("usuario"));
             
                     miUsuario.add(usuario);
                     }
                     res.close();
                     consulta.close();
                     conex.desconectar();
              
             } catch (Exception e) {
            	   System.out.println( "no se pudo consultar la Persona\n"+e);
             }
             return miUsuario;
         }
         
         
         // Metodo eliminar.
         public void eliminarUsuario(int cedula) {
             Conexion conex = new Conexion();
             try {            	 
                 String query = "DELETE FROM usuarios WHERE cedula_usuario = " + cedula;
                 preparedStatement = conex.getConnection().prepareStatement(query);
                 preparedStatement.setInt(1,cedula);
                 preparedStatement.executeUpdate();
             }catch(Exception e) {
                 System.out.println(e.getMessage());
             }
         }


}
