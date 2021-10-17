package com.tienda.DAO;

import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import com.tienda.DTO.ProductoDTO;

public class ProductoDAO {

PreparedStatement preparedStatement;
	
	// Metodo para agregar.
	public void registrarProducto(ProductoDTO producto) 
    {
     Conexion conex= new Conexion();
     try {      
      Statement estatuto = conex.getConnection().createStatement();
      estatuto.executeUpdate("INSERT INTO productos VALUES ('"+producto.getCodigo_producto()+"', '"
        +producto.getNombre_producto()+"', '"+producto.getNit_proveedor()+"','"+producto.getPrecio_compra()+"','"+producto.getIvacompra()+"','"+producto.getPrecio_venta()+"')");
      //JOptionPane.showMessageDialog(null, "Se ha registrado Exitosamente","Información",JOptionPane.INFORMATION_MESSAGE);
      estatuto.close();
      conex.desconectar();      
     } catch (SQLException e) {
               System.out.println(e.getMessage());
      JOptionPane.showMessageDialog(null, "No se Registro la persona");
     }
    }
	
	// Metodo editar registro.
    public void editarProducto(ProductoDTO producto) {
		Conexion conex= new Conexion();
		try {
			Statement st= conex.getConnection().createStatement();
			st.executeUpdate("UPDATE productos SET nombre_producto ='"+producto.getNombre_producto()+"', nit_proveedor = '"+producto.getNit_proveedor()+"', precio_compra = '"+producto.getPrecio_compra()+"', ivacompra = '"+producto.getIvacompra()+"', precio_venta = '"+producto.getPrecio_venta()+"' WHERE codigo_producto = "+producto.getCodigo_producto());
			
		      //JOptionPane.showMessageDialog(null, "Se ha actualizado Exitosamente","Información",JOptionPane.INFORMATION_MESSAGE);
		      st.close();
		      conex.desconectar();
		}catch(SQLException e) {
            System.out.println(e.getMessage());
            	JOptionPane.showMessageDialog(null, "No se Actualizó el producto");
		}
	}
	
	
	// Metodo consultar de manera individual.
	public ArrayList<ProductoDTO> consultarProducto(int codigo) {
        ArrayList< ProductoDTO> miProducto = new ArrayList< ProductoDTO>();
        Conexion conex= new Conexion();
        
        try {
            PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM productos WHERE codigo_producto ="+ codigo);
            ResultSet res = consulta.executeQuery();
            while(res.next()){
            	 ProductoDTO producto= new ProductoDTO();
                 producto.setCodigo_producto(Integer.parseInt(res.getString("codigo_producto")));
                 producto.setNombre_producto(res.getString("nombre_producto"));
                 producto.setNit_proveedor(res.getInt("nit_proveedor"));
                 producto.setPrecio_compra(res.getInt("precio_compra"));
                 producto.setIvacompra(res.getInt("ivacompra"));
                 producto.setPrecio_venta(res.getInt("precio_venta"));
           
               miProducto.add(producto);
               }
               res.close();
               consulta.close();
               conex.desconectar();
            
           } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "no se pudo consultar el producto\n"+e);
           }
           return miProducto;
       }
         
         
     // Metodo Listar registros.
     public ArrayList<ProductoDTO> listarProductos() {
         ArrayList<ProductoDTO> miProducto = new ArrayList<ProductoDTO>();
         Conexion conex= new Conexion();
           System.out.print("Llega al metodo Listar Productos");
         try {
          PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM productos;");
          ResultSet res = consulta.executeQuery(); 
          System.out.print("la consulta es: "+consulta);
          while(res.next()){
              ProductoDTO producto= new ProductoDTO();
              producto.setCodigo_producto(Integer.parseInt(res.getString("codigo_producto")));
              producto.setNombre_producto(res.getString("nombre_producto"));
              producto.setNit_proveedor(res.getInt("nit_proveedor"));
              producto.setPrecio_compra(res.getInt("precio_compra"));
              producto.setIvacompra(res.getInt("ivacompra"));
              producto.setPrecio_venta(res.getInt("precio_venta"));
         
             miProducto.add(producto);
             System.out.print("Llega al metodo Listar Productos"+ miProducto);
             }
             res.close();
             consulta.close();
             conex.desconectar();
        
         } catch (Exception e) {
        	 System.out.print(e);
          JOptionPane.showMessageDialog(null, "no se pudo consultar el producto\n"+e);
         }
         return miProducto;
     }         
         
         
     // Metodo eliminar registro.
     public void eliminarProducto(int codigo) {
         Conexion conex = new Conexion();
         try {            	 
             String query = "DELETE FROM productos WHERE codigo_producto = ?";
             preparedStatement = conex.getConnection().prepareStatement(query);
             preparedStatement.setInt(1,codigo);
             preparedStatement.executeUpdate();
         }catch(Exception e) {
             System.out.println(e.getMessage());
         }
     }
}
