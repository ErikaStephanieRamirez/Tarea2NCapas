package com.uca.capas.service;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Usuario;

public interface UsuarioService {

	public Usuario findOne(Integer usuario);
	
	public Boolean findClaveAndUsuario(String Usuario, String Clave) throws DataAccessException;
	
}
