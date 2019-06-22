package com.uca.capas.dto;

import java.math.BigInteger;

public class EmpleadoDTO {
	
private Integer IdEmpleado ;
	 
    private String NombreE;
	
    private BigInteger Edad;
    
    private String Genero;
	
    private Boolean Estado;
    
    private Integer IdSucursal;
	
	public Integer getIdEmpleado() {
		return IdEmpleado;
	}

	public void setIdEmpleado(Integer idEmpleado) {
		IdEmpleado = idEmpleado;
	}

	public String getNombreE() {
		return NombreE;
	}

	public void setNombreE(String nombreE) {
		NombreE = nombreE;
	}

	public BigInteger getEdad() {
		return Edad;
	}

	public void setEdad(BigInteger edad) {
		Edad = edad;
	}

	public String getGenero() {
		return Genero;
	}

	public void setGenero(String genero) {
		Genero = genero;
	}

	public Boolean getEstado() {
		return Estado;
	}

	public void setEstado(Boolean estado) {
		Estado = estado;
	}

	public int getIdSucursal() {
		return IdSucursal;
	}

	public void setIdSucursal(int idSucursal) {
		IdSucursal = idSucursal;
	}

}
