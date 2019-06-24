package com.uca.capas.domain;

import java.math.BigInteger;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(schema="public",name="Empleado")
public class Empleado {
	@Id 
	@GeneratedValue(generator="empleado_id_empleado_seq",strategy= GenerationType.AUTO)
	@SequenceGenerator(name="empleado_id_empleado_seq",sequenceName= "public.empleado_id_empleado_seq")
    @Column(name="id_Empleado")
    private Integer IdEmpleado ;
	 
	 @Column(name="nombre")
     private String NombreE;

	 @Column(name="edad")
     private BigInteger Edad;
	 
	 @Column(name="genero")
     private String Genero;
	 
	 @Column(name="estado")
     private boolean Estado;
	 
	 @ManyToOne(fetch= FetchType.LAZY)
	 @JoinColumn(name="id_sucursal")
	 private Sucursal sucursal;

	public String getEstadoE() {
		if(this.Estado) {
		return "Activo";
	               }
		else {
			return "No Activo";
			}
		}

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

	public boolean getEstado() {
		return Estado;
	}

	public void setEstado(boolean estado) {
		Estado = estado;
	}

	public Sucursal getSucursal() {
		return sucursal;
	}

	public void setSucursal(Sucursal sucursal) {
		this.sucursal = sucursal;
	}


}
