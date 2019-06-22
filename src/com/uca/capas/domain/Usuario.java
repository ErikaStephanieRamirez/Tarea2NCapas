package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(schema = "public", name = "usuario")
public class Usuario {

	@Id
	@GeneratedValue(generator="usuario_id_usuario_seq", strategy = GenerationType.AUTO)
	@SequenceGenerator(name = "usuario_id_usuario_seq", sequenceName = "public.usuario_id_usuario_seq")
	@Column(name = "id_usuario")
	private Integer idUsuario;

	@NotEmpty(message="El correo es requerido")
	@Email
	@Size(message="Ha pasado el maximo de 30 caracteres",max=30)
	@Column(name = "usuario")
	private String uusuario;
	
	@NotEmpty(message="La contraseña es requerida")
	@Size(message="Ha pasado el maximo de 30 caracteres",max=30)
	@Column(name = "clave")
	private String uclave;
	
	
	public Usuario(String uusuario, String uclave) {
		super();
		this.uusuario = uusuario;
		this.uclave = uclave;
	}

	public Usuario() {
		super();
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getUusuario() {
		return uusuario;
	}

	public void setUusuario(String uusuario) {
		this.uusuario = uusuario;
	}

	public String getUclave() {
		return uclave;
	}

	public void setUclave(String uclave) {
		this.uclave = uclave;
	}

}
