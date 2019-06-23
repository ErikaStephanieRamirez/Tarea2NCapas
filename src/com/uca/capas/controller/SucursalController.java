package com.uca.capas.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Empleado;
import com.uca.capas.domain.Sucursal;
import com.uca.capas.service.EmpleadoService;
import com.uca.capas.service.SucursalService;

@Controller
public class SucursalController {

	@Autowired
	SucursalService sService;
	
	@Autowired
	EmpleadoService eService;
	
	@RequestMapping(value="/EditarS",method= RequestMethod.POST)
	public ModelAndView EditarS(@RequestParam(value="id_sucursal") Integer id_sucursal){
		ModelAndView mav = new ModelAndView();
		Sucursal sucursal=sService.findOne(id_sucursal);
  	    mav.addObject("sucursal",sucursal);
		mav.setViewName("editar");
		return mav;
	}
	
	@RequestMapping(value="/GuardarS",method= RequestMethod.POST)
	public ModelAndView GuardarS(@Valid @ModelAttribute("sucursal") Sucursal sucursal,BindingResult result){
		ModelAndView mav = new ModelAndView();	
		
		if(result.hasErrors()) {
	    	mav.setViewName("editar");
	       }	
		
		else {
			sService.ActualizarS(sucursal);
			List<Sucursal> sucursa = sService.findAll();
	    	mav.addObject("sucursal", sucursa);
			mav.setViewName("inicio");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/NuevaS",method= RequestMethod.POST)
	public ModelAndView NuevaS(@Valid @ModelAttribute("sucursal") Sucursal sucursal,BindingResult result){
		ModelAndView mav = new ModelAndView();	
		
		if(result.hasErrors()) {
	    	mav.setViewName("agregar");
	       }	
		
		else {
			sService.save(sucursal);
			List<Sucursal> sucursa = sService.findAll();
	    	mav.addObject("sucursal", sucursa);
			mav.setViewName("inicio");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/AgregarS")
	public ModelAndView EditarS(){
		ModelAndView mav = new ModelAndView();
		//Sucursal s = sService.Agregar();
  	    mav.addObject("sucursal", new Sucursal());
		mav.setViewName("agregar");
		return mav;
	}
	
	@RequestMapping(value="/EliminarS",method= RequestMethod.POST)
	public ModelAndView Delete(@RequestParam("id_sucursal") Integer id_sucursal){
		ModelAndView mav = new ModelAndView();
		Sucursal s = sService.findOne(id_sucursal);
		sService.delete(s);
		List<Sucursal> sucursal = sService.findAll();
  	    mav.addObject("sucursal", sucursal);
		mav.setViewName("inicio");
		return mav;
	}
	
	@RequestMapping(value="/volver")
	public ModelAndView Volver(){
		ModelAndView mav = new ModelAndView();
		List<Sucursal> sucursal = sService.findAll();
  	    mav.addObject("sucursal", sucursal);
		mav.setViewName("inicio");
		return mav;
	}
	
	@RequestMapping(value="/PerfilS",method= RequestMethod.POST)
	public ModelAndView PerfilS(@RequestParam(value="id_sucursal") Integer id_sucursal){
		ModelAndView mav = new ModelAndView();
		Sucursal sucursal=sService.findOne(id_sucursal);
  	    mav.addObject("sucursal",sucursal);
  	    List<Empleado> empleado = eService.findOnes(id_sucursal);
	    mav.addObject("empleado", empleado);
		mav.setViewName("perfil");
		return mav;
	}
}
