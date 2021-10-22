package com.tienda.API;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.*;

import com.tienda.DAO.VentaDAO;
import com.tienda.DTO.VentaDTO;

@RestController
public class VentasController {
	
		
		@RequestMapping("/registrarVenta")
	    public void registrarVenta(VentaDTO venta) {   
	        VentaDAO Dao= new VentaDAO(); 
	        Dao.registrarVenta(venta);        
	     }
		
	    @RequestMapping("/consultarVenta")
		public ArrayList<VentaDTO> consultarVenta(int cedula) {
	        VentaDAO Dao = new VentaDAO(); 
	        return Dao.consultarVenta(cedula);        
	    }
	    
	    @RequestMapping("/editarVenta")
	    public void editarVenta(VentaDTO venta) {    
	    	VentaDAO Dao=new VentaDAO();  
	        Dao.editarVenta(venta);
	    }
		
	    @RequestMapping("/listarVentas")
	    public ArrayList<VentaDTO> listarVentas() {    	
	    	VentaDAO Dao=new VentaDAO();  
	        return Dao.listarVentas();
	        
	    }

	    @RequestMapping("/eliminarVenta")
	    public void eliminarVenta(int codigo_venta) {
	    	VentaDAO Dao=new VentaDAO();  
	        Dao.eliminarVenta(codigo_venta);
	    }	

}
