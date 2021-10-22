package com.tienda.API;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tienda.DAO.ProductoDAO;
import com.tienda.DTO.ProductoDTO;

@RestController
public class ProductoController {
	
	@RequestMapping("/registrarProducto")
    public void registrarProducto(ProductoDTO producto) {   
        ProductoDAO Dao= new ProductoDAO(); 
        Dao.registrarProducto(producto);        
     }
	
    @RequestMapping("/consultarProducto")
	public ArrayList<ProductoDTO> consultarProducto(int codigo) {
        ProductoDAO Dao = new ProductoDAO(); 
        return Dao.consultarProducto(codigo);        
    }
    
    @RequestMapping("/editarProducto")
    public void editarProducto(ProductoDTO producto) {    
    	ProductoDAO Dao=new ProductoDAO();  
        Dao.editarProducto(producto);
    }
	
    @RequestMapping("/listarProductos")
    public ArrayList< ProductoDTO> listarProductos() {    	
    	ProductoDAO Dao=new ProductoDAO();  
        return Dao.listarProductos();
        
    }

    @RequestMapping("/eliminarProducto")
    public void eliminarProducto(int codigo) {
    	ProductoDAO Dao=new ProductoDAO();  
        Dao.eliminarProducto(codigo);
    }
}