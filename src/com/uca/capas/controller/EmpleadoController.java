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
import com.uca.capas.dto.EmpleadoDTO;
import com.uca.capas.service.EmpleadoService;
import com.uca.capas.service.SucursalService;

@Controller
public class EmpleadoController {

	@Autowired
	SucursalService sService;
	 
	@Autowired
	EmpleadoService eService;
	
	@RequestMapping(value="/BorrarE",method= RequestMethod.POST)
	public ModelAndView Delete(@RequestParam("id_empleado") Integer id_empleado){
		ModelAndView mav = new ModelAndView();
		
		Empleado e = eService.findOne(id_empleado);
		
		Sucursal s = sService.findOne(e.getSucursal().getIdSucursal());
		
		eService.delete(e);
		
		List<Empleado> empleado = eService.findOnes(s.getIdSucursal());
		mav.addObject("sucursal",s);
	    mav.addObject("empleado", empleado);
		mav.setViewName("perfil");
		return mav;
	}
	
	@RequestMapping(value="/EditarE",method= RequestMethod.POST)
	public ModelAndView EditarE(@RequestParam(value="id_empleado") Integer id_empleado){
		ModelAndView mav = new ModelAndView();
  	    mav.addObject("empleado", eService.SetearDTO(id_empleado));
		mav.setViewName("editarE");
		return mav;
	}
	
	@RequestMapping(value="/GuardarE",method= RequestMethod.POST)
	public ModelAndView GuardarE(@Valid @ModelAttribute("empleado") EmpleadoDTO empleado,BindingResult result){
		ModelAndView mav = new ModelAndView();	
		
		if(result.hasErrors()) {
	    	mav.setViewName("editarE");
	       }	
		
		else {
			eService.Actualizar(empleado);
			
			Sucursal sucursal = sService.findOne(empleado.getIdSucursal());
	  	    mav.addObject("sucursal",sucursal);
	  	    List<Empleado> empl = eService.findOnes(sucursal.getIdSucursal());
		    mav.addObject("empleado", empl);
			mav.setViewName("perfil"); 
		}
		
		return mav;
	}
	
	@RequestMapping(value="/AgregarE",method= RequestMethod.POST)
	public ModelAndView AddE(@RequestParam(value="id") int id){
		ModelAndView mav = new ModelAndView();	
  	   mav.addObject("empleado",eService.Asociar(id));
		 mav.setViewName("agregarE");
		return mav;
	}
	
	@RequestMapping(value="/GuardarEmpl",method= RequestMethod.POST)
	public ModelAndView Add3(@Valid @ModelAttribute("empleado") EmpleadoDTO empleadoDTO2 ,BindingResult result){
		ModelAndView mav = new ModelAndView();	
		
		if(result.hasErrors()) {
	    	mav.setViewName("agregarE");
	       }	
		
		else {
			eService.Agregar(empleadoDTO2);
			Sucursal sucursal = sService.findOne(empleadoDTO2.getIdSucursal());
			
		 List<Empleado> empleado = eService.findOnes(sucursal.getIdSucursal());
  	     
  	     mav.addObject("sucursal", sucursal);
  	     mav.addObject("empleado", empleado);
		 mav.setViewName("perfil");
		 
		}
		return mav;
	}
	
	@RequestMapping(value="/volverP",method= RequestMethod.POST)
	public ModelAndView Volver(@RequestParam("idSucursal") Integer id_empleado){
		ModelAndView mav = new ModelAndView();	
		
		Sucursal sucursal = sService.findOne(id_empleado);
		
		 List<Empleado> empl = eService.findOnes(sucursal.getIdSucursal());
 	     
 	     mav.addObject("sucursal", sucursal);
 	     mav.addObject("empleado", empl);
		 mav.setViewName("perfil");
		 return mav;
	}
	
}