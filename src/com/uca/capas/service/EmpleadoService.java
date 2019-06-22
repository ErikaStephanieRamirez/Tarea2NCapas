package com.uca.capas.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Empleado;
import com.uca.capas.dto.EmpleadoDTO;

public interface EmpleadoService {
	
	public Empleado findOne(Integer empleado);
	
	public List<Empleado> findOnes(Integer id) throws DataAccessException;
	
	public List<Empleado> findAll() throws DataAccessException;

	public int ActualizarE(Empleado empleado) throws DataAccessException;
	
	public void delete(Empleado e);
	
	public Empleado save(Empleado e);

	public EmpleadoDTO SetearDTO(int id) throws DataAccessException ;
	
	public int Actualizar(EmpleadoDTO E) throws DataAccessException ;
	
	public EmpleadoDTO Asociar(int id) throws DataAccessException;

	public int Agregar(EmpleadoDTO E) throws DataAccessException;
}
