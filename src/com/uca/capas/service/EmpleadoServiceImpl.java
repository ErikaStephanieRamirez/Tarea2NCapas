package com.uca.capas.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.Empleado;
import com.uca.capas.dto.EmpleadoDTO;
import com.uca.capas.repositories.EmpleadoRepository;
import com.uca.capas.repositories.SucursalRepository;

@Service
public class EmpleadoServiceImpl implements EmpleadoService {

	@Autowired
	EmpleadoRepository eRepository;

	@Autowired
	SucursalRepository sRepository;
	
	@Autowired
	private EntityManager entityManager;

	@Override
	public Empleado findOne(Integer empleado) {
		// TODO Auto-generated method stub
		return eRepository.findById(empleado).get();
	}

	@Override
	public List<Empleado> findOnes(Integer empleado) {
		// TODO Auto-generated method stub
		return eRepository.findOnes(empleado);
	}
	
	@Override
	public List<Empleado> findAll() throws DataAccessException {
		// TODO Auto-generated method stub
		return eRepository.findAll();
	}

	@Override
	@Transactional
	public int ActualizarE(Empleado E) throws DataAccessException {
		Empleado empleado = eRepository.findById(E.getIdEmpleado()).get();
		empleado.setNombreE(E.getNombreE());
		empleado.setEdad(E.getEdad());
		empleado.setGenero(E.getGenero());
		empleado.setEstado(E.getEstado());
		entityManager.merge(empleado);
		entityManager.flush();
		return 1;
	}

	@Transactional
	public void delete(Empleado e) {
		// TODO Auto-generated method stub
		eRepository.delete(e);
	}

	@Transactional
	public Empleado save(Empleado e) {
		// TODO Auto-generated method stub
		return eRepository.save(e);
	}
	
	@Override
	public EmpleadoDTO SetearDTO(int id) throws DataAccessException {
		Empleado empleado=eRepository.findById(id).get();
		EmpleadoDTO E = new EmpleadoDTO();
		E.setIdEmpleado(empleado.getIdEmpleado());
		E.setNombreE(empleado.getNombreE());
		E.setEdad(empleado.getEdad()); 
		E.setGenero(empleado.getGenero());
		E.setEstado(empleado.getEstado());
		E.setIdSucursal(empleado.getSucursal().getIdSucursal());
		return E;
	}

	@Override
	@Transactional
	public int Actualizar(EmpleadoDTO E) throws DataAccessException {
		Empleado empleado= eRepository.findById(E.getIdEmpleado()).get();
		empleado.setNombreE(E.getNombreE());
		empleado.setEdad(E.getEdad());
		empleado.setGenero(E.getGenero());
		empleado.setEstado(E.getEstado());
		entityManager.merge(empleado);
		entityManager.flush();
		return 1;
	}

	@Override
	public EmpleadoDTO Asociar(int id) throws DataAccessException {
		EmpleadoDTO E = new EmpleadoDTO();
		E.setIdSucursal(id);
		return E; 
	}

	@Override
	@Transactional
	public int Agregar(EmpleadoDTO E) throws DataAccessException{
		Empleado empleado= new Empleado();
		empleado.setNombreE(E.getNombreE());
		empleado.setEdad(E.getEdad());
		empleado.setGenero(E.getGenero());
		empleado.setEstado(E.getEstado());
		empleado.setSucursal(sRepository.findById(E.getIdSucursal()).get());
		entityManager.persist(empleado);
		entityManager.flush();
		return 1;
	}
}
