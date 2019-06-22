package com.uca.capas.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.Sucursal;
import com.uca.capas.repositories.SucursalRepository;

@Service
public class SucursalServiceImpl implements SucursalService{

	@Autowired
	SucursalRepository sRepository;
	
	@Autowired
	 private EntityManager entityManager;
	
	@Override
	public Sucursal findOne(Integer sucursal) {
		// TODO Auto-generated method stub
		return sRepository.findById(sucursal).get();
	}
	
	@Override
	public List<Sucursal> findAll() throws DataAccessException {
		// TODO Auto-generated method stub
		return sRepository.findAll();
	}
	
	@Override
	@Transactional
	public int ActualizarS(Sucursal sucursal) throws DataAccessException {	
		Sucursal suc= sRepository.findById(sucursal.getIdSucursal()).get();
		suc.setNombreS(sucursal.getNombreS());
		suc.setHoraA(sucursal.getHoraA());
		suc.setHoraC(sucursal.getHoraC());
		suc.setUbicacion(sucursal.getUbicacion());
		suc.setnMesas(sucursal.getnMesas());
		suc.setNomGerente(sucursal.getNomGerente());
		entityManager.merge(suc);
		entityManager.flush();
		return 1;
	}

	@Transactional
	public void delete(Sucursal s) {
		// TODO Auto-generated method stub
		sRepository.delete(s);
	}
	
	@Transactional
	public Sucursal save(Sucursal c) {
		// TODO Auto-generated method stub
		return sRepository.save(c);
	}
	
}
