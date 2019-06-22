package com.uca.capas.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Sucursal;

public interface SucursalService {
	
	public Sucursal findOne(Integer sucursal);
	
	public List<Sucursal> findAll() throws DataAccessException;

	public int ActualizarS(Sucursal sucursal) throws DataAccessException;
	
	public void delete(Sucursal s);
	
	public Sucursal save(Sucursal s);

}
