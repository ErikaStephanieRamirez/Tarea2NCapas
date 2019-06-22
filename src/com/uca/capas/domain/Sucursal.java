package com.uca.capas.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import java.math.BigInteger;
import java.util.List;

@Entity
@Table(schema="public",name="Sucursal")
public class Sucursal {
	
	@Id 
	@GeneratedValue(generator="sucursal_id_sucursal_seq",strategy= GenerationType.AUTO)
	@SequenceGenerator(name="sucursal_id_sucursal_seq",sequenceName= "public.sucursal_id_sucursal_seq",allocationSize=1)
    @Column(name="id_sucursal")
    private Integer idSucursal ;
	
	@NotEmpty(message="Campo obligatorio")
    @Size(message="Supero 100 caracteres",max=100)
	@Column(name="nombre")
    private String NombreS;
	
	@NotEmpty(message="Campo obligatorio")
    @Size(message="Supero 150 caracteres",max=150)
	@Column(name="Ubicacion")
    private String Ubicacion;
	
	@NotEmpty(message="Campo obligatorio")
	@Column(name="horario_apertura")
    private String HoraA;
	
	@NotEmpty(message="Campo obligatorio")
	@Column(name="horario_cierre")
    private String HoraC;
	
	@NotNull(message="Campo obligatorio")
	@Column(name="nmesas")
    private BigInteger nMesas;
	
	@NotEmpty(message="Campo obligatorio")
    @Size(message="Supero 100 caracteres",max=100)
	@Column(name="nomgerente")
    private String nomGerente;
	
	@OneToMany(mappedBy="sucursal",fetch= FetchType.LAZY,cascade=CascadeType.PERSIST, orphanRemoval=true)
	private List<Empleado> empleados;
	
	public Integer getIdSucursal() {
		return idSucursal;
	}

	

	public String getNombreS() {
		return NombreS;
	}

	public void setNombreS(String nombreS) {
		NombreS = nombreS;
	}

	public String getHoraA() {
		return HoraA;
	}

	public void setHoraA(String horaA) {
		HoraA = horaA;
	}

	public String getHoraC() {
		return HoraC;
	}

	public void setHoraC(String horaC) {
		HoraC = horaC;
	}

	public String getUbicacion() {
		return Ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		Ubicacion = ubicacion;
	}

	public BigInteger getnMesas() {
		return nMesas;
	}

	public void setnMesas(BigInteger nMesas) {
		this.nMesas = nMesas;
	}

	public String getNomGerente() {
		return nomGerente;
	}

	public void setNomGerente(String nomGerente) {
		this.nomGerente = nomGerente;
	}

	public List<Empleado> getEmpleados() {
		return empleados;
	}

	public void setEmpleados(List<Empleado> empleados) {
		this.empleados = empleados;
	}

	public void setIdSucursal(Integer idSucursal) {
		this.idSucursal = idSucursal;
	}
	
	
}
