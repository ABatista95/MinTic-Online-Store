package com.tienda.API;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tienda.DTO.ProveedorDTO;
import com.tienda.DAO.ProveedorDAO;

@RestController
public class ProveedorController {
	
	@RequestMapping("/registrarProveedor")
    public void registrarProveedores(ProveedorDTO proveedor) 
     {
	 ProveedorDAO Dao= new ProveedorDAO(); 
        Dao.registrarProveedores(proveedor);	        
     }
	
	@RequestMapping("/editarProveedor")
    public void editarProveedor(ProveedorDTO proveedor) {
    	ProveedorDAO Dao = new ProveedorDAO();
    	Dao.editarProveedor(proveedor);
    }
		
    @RequestMapping("/consultarProveedor")
	public ArrayList<ProveedorDTO> consultarProveedor(int nit) {
        ProveedorDAO Dao = new ProveedorDAO(); 
    return Dao.consultarProveedor(nit);
        
    }
	
    @RequestMapping("/listarProveedores")    
    public ArrayList< ProveedorDTO> listaDeProveedores() {
    	System.out.println("Llego Controller - Proveedor");
    	ProveedorDAO Dao=new ProveedorDAO();  
        return Dao.listaDeProveedores();   
    }
    

    @RequestMapping("/eliminarProveedor")
    public void eliminarProveedor(int nit) {
    	ProveedorDAO Dao=new ProveedorDAO();  
        Dao.eliminarProveedor(nit);
    }
}
