package com.tienda.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.tienda.DTO.VentaDTO;

public class VentaDAO {
	// Metodo para agregar.
	PreparedStatement preparedStatement;
		public void registrarVenta(VentaDTO venta) 
	    {
	     Conexion conex= new Conexion();
	     try {      
	      Statement estatuto = conex.getConnection().createStatement();
	      estatuto.executeUpdate("INSERT INTO ventas VALUES ('"+venta.getCedulaCliente()+"', '"
	        +venta.getCedulaUsuario()+"', '"+venta.getIvaVenta()+"','"+venta.getTotalVenta()+"','"
	    		  +venta.getValorVenta()+"')");
	      //JOptionPane.showMessageDialog(null, "Se ha registrado Exitosamente","Información",JOptionPane.INFORMATION_MESSAGE);
	      estatuto.close();
	      conex.desconectar();      
	     } catch (SQLException e) {
	               System.out.println(e.getMessage());
	     System.out.println( "No se Registro la Venta");
	     }
	    }
		
		// Metodo editar registro.
	    public void editarVenta(VentaDTO venta) {
			Conexion conex= new Conexion();
			try {
				Statement st= conex.getConnection().createStatement();
				st.executeUpdate("UPDATE ventas SET cedula_cliente ='"+venta.getCedulaCliente()+"', iva_venta = '"+venta.getIvaVenta()+"', total_venta = '"+venta.getTotalVenta()+"', valor_venta = '"+venta.getValorVenta()+"' WHERE codigo_venta = "+venta.getCodigoVenta()); 
				//JOptionPane.showMessageDialog(null, "Se ha actualizado Exitosamente","Información",JOptionPane.INFORMATION_MESSAGE);
			      st.close();
			      conex.desconectar();
			}catch(SQLException e) {
	            System.out.println(e.getMessage());
	            	//JOptionPane.showMessageDialog(null, "No se Actualizó la Venta");
			}
		}
		
		
		// Metodo consultar de manera individual.
		public ArrayList<VentaDTO> consultarVenta(int cedulaCliente) {
	        ArrayList< VentaDTO> miVenta = new ArrayList< VentaDTO>();
	        Conexion conex= new Conexion();
	        
	        try {
	            PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM ventas WHERE cedula_cliente ="+ cedulaCliente);
	            ResultSet res = consulta.executeQuery();
	            while(res.next()){
	                VentaDTO venta= new VentaDTO();
	                   venta.setCodigoVenta(Integer.parseInt(res.getString("codigo_venta")));
	                   venta.setCedulaCliente(Integer.parseInt(res.getString("cedula_cliente")));
	                   venta.setCedulaUsuario(Integer.parseInt(res.getString("cedula_usuario")));
	                   venta.setIvaVenta(res.getDouble("iva_venta"));
	                   venta.setTotalVenta(res.getDouble("total_venta"));
	                   venta.setValorVenta(res.getDouble("valor_venta"));
	           
	                   miVenta.add(venta);
	                   }
	                   res.close();
	                   consulta.close();
	                   conex.desconectar();
	            
	           } catch (Exception e) {
	        	   System.out.println("no se pudo consultar la Venta\n"+e);
	           }
	           return miVenta;
	       }
	         
	         
	         // Metodo Listar registros.
	         public ArrayList<VentaDTO> listarVentas() {
	             ArrayList<VentaDTO> miVenta = new ArrayList<VentaDTO>();
	             Conexion conex= new Conexion();
	               System.out.print("Llego al metodo");
	             try {
	              PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM ventas;");
	              ResultSet res = consulta.executeQuery();
	              while(res.next()){
	            	  VentaDTO venta= new VentaDTO();
	                   venta.setCodigoVenta(Integer.parseInt(res.getString("codigo_venta")));
	                   venta.setCedulaCliente(Integer.parseInt(res.getString("cedula_cliente")));
	                   venta.setCedulaUsuario(Integer.parseInt(res.getString("cedula_usuario")));
	                   venta.setIvaVenta(res.getDouble("iva_venta"));
	                   venta.setTotalVenta(res.getDouble("total_venta"));
	                   venta.setValorVenta(res.getDouble("valor_venta"));
	           
	                   miVenta.add(venta);
	                     }
	                     res.close();
	                     consulta.close();
	                     conex.desconectar();
	              
	             } catch (Exception e) {
	            	   System.out.println( "no se pudo consultar la Venta\n"+e);
	             }
	             return miVenta;
	         }         
	         
	         
	         // Metodo eliminar registro.
	         public void eliminarVenta(int codigo_venta) {
	             Conexion conex = new Conexion();
	             try {            	 
	                 String query = "DELETE FROM venta WHERE codigo_venta = ?";
	                 preparedStatement = conex.getConnection().prepareStatement(query);
	                 preparedStatement.setInt(1,codigo_venta);
	                 preparedStatement.executeUpdate();
	             }catch(Exception e) {
	                 System.out.println(e.getMessage());
	             }
	         }


}
