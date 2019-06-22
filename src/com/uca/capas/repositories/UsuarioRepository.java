package com.uca.capas.repositories;

import org.springframework.dao.DataAccessException;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Usuario;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {
	
	public Usuario findByUusuarioAndUclave(String usuario, String clave) throws DataAccessException;
	
}
