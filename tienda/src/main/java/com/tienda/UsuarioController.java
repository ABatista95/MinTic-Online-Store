package com.tienda;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tienda.DAO.UsuarioDAO;
import com.tienda.DTO.UsuarioDTO;

@RestController
public class UsuarioController {

    @RequestMapping("/registrarUsuario")
    public void registrarUsuario(UsuarioDTO usuario) 
     {
    	//int cedula,String email, String nombre,String password, String usuario
    	//UsuarioDTO registroUsuario = new UsuarioDTO();
    	//registroUsuario.setCedulaUsuario(cedula);
    	//registroUsuario.setNombreUsuario(nombre);
    	//registroUsuario.setEmailUsuario(email);
    	//registroUsuario.setUsuario(usuario);
    	//registroUsuario.setPassword(password);    	
    	//System.out.println("Valor: "+usuario);
    	
    	System.out.println("Paso por aca"+usuario.getCedulaUsuario()+
    								  " "+usuario.getNombreUsuario()+
    								  " "+usuario.getEmailUsuario()+
    								  " "+usuario.getPassword()+
    								  " "+usuario.getUsuario());
        UsuarioDAO Dao= new UsuarioDAO(); 
        Dao.registrarUsuario(usuario);        
     }
	
    @RequestMapping("/consultarUsuario")
	public ArrayList<UsuarioDTO> consultarUsuario(int documento) {
        UsuarioDAO Dao = new UsuarioDAO(); 
    return Dao.consultarUsuario(documento);        
    }
    
    @RequestMapping("/editarUsuario")
    public void editarUsuario(int cedula) {    
        UsuarioDAO Dao=new UsuarioDAO();  
        Dao.eliminarUsuario(cedula);
    }
	
    @RequestMapping("/listarUsuarios")
    public ArrayList< UsuarioDTO> listaDeUsuarios() {    	
        UsuarioDAO Dao=new UsuarioDAO();  
        return Dao.listaDeUsuarios();
    }

    @RequestMapping("/eliminarUsuario")
    public void eliminarUsuario(int cedula) {
        UsuarioDAO Dao=new UsuarioDAO();  
        Dao.eliminarUsuario(cedula);
    }
}
