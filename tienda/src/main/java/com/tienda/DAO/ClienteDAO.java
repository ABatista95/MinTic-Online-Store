package com.tienda.DAO;

import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import com.tienda.DTO.ClienteDTO;

public class ClienteDAO {
	
	PreparedStatement preparedStatement;

	//Metodo para registrar
	public void registrarCliente(ClienteDTO usuario) 
    {
     Conexion conex= new Conexion();
     try {
      Statement estatuto = conex.getConnection().createStatement();
      estatuto.executeUpdate("INSERT INTO clientes VALUES ('"+usuario.getCedulaCliente()+"', '"
        +usuario.getDireccionCliente()+"', '"+usuario.getEmailCliente()+"','"+usuario.getNombreCliente()+"','"+usuario.getTelefonoCliente()+"')");
      JOptionPane.showMessageDialog(null, "Se ha registrado Exitosamente","Información",JOptionPane.INFORMATION_MESSAGE);
      estatuto.close();
      conex.desconectar();
      
     } catch (SQLException e) {
               System.out.println(e.getMessage());
      JOptionPane.showMessageDialog(null, "No se Registro el cliente");
     }
    }
	
	//Metodo para Consultar
	public ArrayList<ClienteDTO> consultarCliente(int documento) {
        ArrayList< ClienteDTO> miCliente = new ArrayList< ClienteDTO>();
        Conexion conex= new Conexion();
          
        try {
         PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM clientes where cedula_cliente = ? ");
         consulta.setInt(1, documento);
         ResultSet res = consulta.executeQuery();
         
        if(res.next()){
        	ClienteDTO usuario= new ClienteDTO();
            usuario.setCedulaCliente(Integer.parseInt(res.getString("cedula_cliente")));
            usuario.setDireccionCliente(res.getString("direccion_cliente"));
            usuario.setEmailCliente(res.getString("email_cliente"));
            usuario.setNombreCliente(res.getString("nombre_cliente"));
            usuario.setTelefonoCliente(res.getString("telefono_cliente"));
       
          miCliente.add(usuario);
                }
                res.close();
                consulta.close();
                conex.desconectar();
         
        } catch (Exception e) {
         JOptionPane.showMessageDialog(null, "no se pudo consultar la Persona\n"+e);
        }
        return miCliente;
       }
	
	//Metodo listar todos los registros
	public ArrayList<ClienteDTO> listaDeClientes() {
        ArrayList< ClienteDTO> miCliente = new ArrayList< ClienteDTO>();
        Conexion conex= new Conexion();
          
        try {
         PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM clientes");
         ResultSet res = consulta.executeQuery();
         while(res.next()){
        	 ClienteDTO usuario= new ClienteDTO();
        	 usuario.setCedulaCliente(Integer.parseInt(res.getString("cedula_cliente")));
             usuario.setDireccionCliente(res.getString("direccion_cliente"));
             usuario.setEmailCliente(res.getString("email_cliente"));
             usuario.setNombreCliente(res.getString("nombre_cliente"));
             usuario.setTelefonoCliente(res.getString("telefono_cliente"));
        
          miCliente.add(usuario);
                }
                res.close();
                consulta.close();
                conex.desconectar();
         
        } catch (Exception e) {
         JOptionPane.showMessageDialog(null, "no se pudo consultar la Persona\n"+e);
        }
        return miCliente;
    }
	
	public void editarCliente(ClienteDTO cliente) {
		Conexion conex= new Conexion();
		try {
			Statement st= conex.getConnection().createStatement();
			st.executeUpdate("UPDATE clientes SET email_cliente ='"+cliente.getEmailCliente()+"', nombre_cliente = '"+cliente.getNombreCliente()+"', direccion_cliente = '"+cliente.getDireccionCliente()+"', telefono_cliente = '"+cliente.getTelefonoCliente()+"' WHERE cedula_cliente = "+cliente.getCedulaCliente()); 
			JOptionPane.showMessageDialog(null, "Se ha actualizado Exitosamente","Información",JOptionPane.INFORMATION_MESSAGE);
		      st.close();
		      conex.desconectar();
		}catch(SQLException e) {
            System.out.println(e.getMessage());
            	JOptionPane.showMessageDialog(null, "No se Actualizó el cliente");
		}
	}
	
	//Metodo eliminar
	public void eliminarCliente(int cedula) {
        Conexion conex = new Conexion();
        try {
            String query = "DELETE FROM clientes WHERE cedula_cliente = ?";
            preparedStatement = conex.getConnection().prepareStatement(query);
            preparedStatement = conex.getConnection().prepareStatement(query);
            preparedStatement.setInt(1,cedula);
            preparedStatement.executeUpdate();
        }catch(Exception e) {
            System.out.println(e.getMessage());
        }
    }

}
