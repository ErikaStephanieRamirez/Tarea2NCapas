package com.uca.capas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.Usuario;
import com.uca.capas.repositories.UsuarioRepository;


@Service
public class UsuarioServiceImpl implements UsuarioService{

	@Autowired
	UsuarioRepository uRepository;
	
	@Override
	public Usuario findOne(Integer usuario) {
		return null;
	}
	
	@Override
	public Boolean findClaveAndUsuario(String Usuario, String Clave) {
		if(uRepository.findByUusuarioAndUclave(Usuario, Clave) == null) {
			return false;
		}
		else return true;
	}
}
