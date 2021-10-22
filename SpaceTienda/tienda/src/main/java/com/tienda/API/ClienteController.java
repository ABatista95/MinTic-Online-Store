package com.tienda.API;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tienda.DAO.ClienteDAO;
import com.tienda.DTO.ClienteDTO;

@RestController
public class ClienteController {

	@RequestMapping("/registrarCliente")
    public void registrarCliente(ClienteDTO cliente) {   
        ClienteDAO Dao= new ClienteDAO(); 
        Dao.registrarCliente(cliente);        
     }
	
	 @RequestMapping("/editarCliente")
	    public void editarCliente(ClienteDTO cliente) {
	    	ClienteDAO Dao = new ClienteDAO();
	    	Dao.editarCliente(cliente);
	    }
	
    @RequestMapping("/consultarCliente")
	public ArrayList<ClienteDTO> consultarCliente(int cedula) {
        ClienteDAO Dao = new ClienteDAO(); 
    return Dao.consultarCliente(cedula);
        
    }
	
    @RequestMapping("/listarClientes")
    public ArrayList< ClienteDTO> listaDeClientes() {
        ClienteDAO Dao=new ClienteDAO();  
        return Dao.listaDeClientes();
    }

    @RequestMapping("/eliminarCliente")
    public void eliminarCliente(int cedula) {
    	ClienteDAO Dao=new ClienteDAO();  
        Dao.eliminarCliente(cedula);
    }
}