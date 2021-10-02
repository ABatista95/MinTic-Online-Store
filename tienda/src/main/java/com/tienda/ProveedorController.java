package com.tienda;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;

import com.tienda.DTO.ProveedorDTO;
import com.tienda.DAO.ProveedorDAO;


public class ProveedorController {
	 @RequestMapping("/registrarProveedor")
	    public void registrarUsuario(ProveedorDTO proveedor) 
	     {
		 ProveedorDAO Dao= new ProveedorDAO(); 
	        Dao.registrarProveedores(proveedor);
	        
	     }
		
	    @RequestMapping("/consultarProveedor")
		public ArrayList<ProveedorDTO> consultarProveedor(int nit) {
	        ProveedorDAO Dao = new ProveedorDAO(); 
	    return Dao.consultarProveedor(nit);
	        
	    }
		
	    @RequestMapping("/listarProveedores")
	    public ArrayList< ProveedorDTO> listaDeProveedores() {
	    	ProveedorDAO Dao=new ProveedorDAO();  
	        return Dao.listaDeProveedores();
	        
	    }

	    @RequestMapping("/eliminarProveedor")
	    public void eliminarProveedor(int nit) {
	    	ProveedorDAO Dao=new ProveedorDAO();  
	        Dao.eliminarProveedor(nit);
	    }
	}