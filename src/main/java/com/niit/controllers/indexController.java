package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.user;

@Controller
public class indexController {
	
	@RequestMapping("/")
	public String index()
	{
		return "index";
	}
	
	@RequestMapping(value="/gotoRegister",method=RequestMethod.GET)
	public ModelAndView gotoRegister()
	{
		ModelAndView mv= new ModelAndView();
		mv.addObject("user",new user());//modelclass
		mv.setViewName("register");//jsp view
		return mv;
	}
	
	@RequestMapping(value="/saveRegister",method=RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("user")user user,BindingResult result)
	{
		ModelAndView mv= new ModelAndView();
		if(result.hasErrors())
		{
			mv.setViewName("register");
		return mv;
	}
		else
		{
			user.setrRole("ROLE_USER");//this line will by default add ROLE_USER in ROLE  column
			userDaoImpl.insertUser(user);
			mv.setViewName("index");	
			
		}
		return mv;
		}
	
}
