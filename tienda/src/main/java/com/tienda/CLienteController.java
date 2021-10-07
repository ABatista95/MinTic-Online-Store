package com.tienda;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tienda.DAO.ClienteDAO;
import com.tienda.DTO.ClienteDTO;

@RestController
public class CLienteController {

	@RequestMapping("/registrarCliente")
    public void registrarCliente(ClienteDTO usuario) 
     {
        ClienteDAO Dao= new ClienteDAO(); 
        Dao.registrarCliente(usuario);        
     }
	
    @RequestMapping("/consultarCliente")
	public ArrayList<ClienteDTO> consultarCliente(int documento) {
        ClienteDAO Dao = new ClienteDAO(); 
    return Dao.consultarCliente(documento);
        
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
