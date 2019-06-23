package com.uca.capas.dto;

import java.math.BigInteger;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

public class EmpleadoDTO {
	
	public Integer IdEmpleado;
	
	@NotEmpty(message="Campo obligatorio")
	@Size(message="Supero 100 caracteres",max=100)
    public String NombreE;
	
	@NotNull(message="Campo obligatorio")
    @Digits(fraction = 0, integer = 2,message="Ingrese edad de solo dos digitos")
    @Range(min=18,max=75,message="Ingrese edad dentro del rango de 18 a 75")
    public BigInteger Edad;
    
    public String Genero;
	
    public Boolean Estado;
    
    public Integer IdSucursal;
	
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
