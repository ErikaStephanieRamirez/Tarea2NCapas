package com.uca.capas.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Sucursal;
import com.uca.capas.domain.Usuario;
import com.uca.capas.service.SucursalService;
import com.uca.capas.service.UsuarioService;


@Controller
public class UsuarioController {

	@Autowired
	UsuarioService uService;
	
	@Autowired
	SucursalService sService;
	
	@RequestMapping(value="/inicio",method= RequestMethod.POST)
	public ModelAndView inicio(@Valid @ModelAttribute("Usuario") Usuario Usuario ,BindingResult result) {
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors() || uService.findClaveAndUsuario(Usuario.getUusuario(), Usuario.getUclave()) == false) {
			mav.addObject("message","Usuario no encontrado");
			mav.setViewName("main");
			
		}
		else {
			List<Sucursal> sucursal = sService.findAll();
	    	mav.addObject("sucursal", sucursal);
			mav.setViewName("inicio");
		}
		return mav;
	}
}
