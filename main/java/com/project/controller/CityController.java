package com.project.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.project.model.AreaVO;
import com.project.model.BloodBankVO;
import com.project.model.AdminVO;
import com.project.model.CityVO;
import com.project.service.CityService;

@Controller
public class CityController {
	@Autowired
	CityService cityService;
	@RequestMapping(value="/")
	public ModelAndView firstPage()
	{
		return new ModelAndView("firstPage");
	}
	

	
	@RequestMapping(value="/addCity")
	public ModelAndView loadCity(HttpServletRequest request)
	{	
		HttpSession session=request.getSession(true);  
	    String AdminUserName=(String)session.getAttribute("AdminUserName");
	    System.out.println(AdminUserName);
	    if(AdminUserName=="nisarg"){
		return new ModelAndView("admin/addCity","cityVO",new CityVO());
	    }
	    else{
	    	return new ModelAndView("redirect:/admin");
	    }
	}
	@RequestMapping(value="/addArea")
	public ModelAndView addArea(@ModelAttribute CityVO cityVO,@ModelAttribute AreaVO areaVO,HttpServletRequest request)
	{
		
		List cityList=cityService.searchCity(cityVO);
		HttpSession session=request.getSession(true);  
	    String AdminUserName=(String)session.getAttribute("AdminUserName");
	    System.out.println(AdminUserName);
	    if(AdminUserName=="nisarg"){
	    	return new ModelAndView("admin/addArea","areaVO",new AreaVO()).addObject("cityList", cityList);
	    }
	    else{
	    	return new ModelAndView("redirect:/admin");
	    }
	}
	@RequestMapping(value = "/viewCity")
	public ModelAndView loadReg2(@ModelAttribute CityVO cityVO,HttpServletRequest request) 
	{
		List cityList=cityService.searchCity(cityVO);
		HttpSession session1=request.getSession(true);  
	    String AdminUserName=(String)session1.getAttribute("AdminUserName");
	    System.out.println(AdminUserName);
	    if(AdminUserName=="nisarg"){
	    	return new ModelAndView("admin/viewCity","cityList",cityList);
	    }
	    else{
	    	return new ModelAndView("redirect:/admin");
	    }
	}
	@RequestMapping(value="/addBloodbank")
	public ModelAndView addbloodBank(@ModelAttribute CityVO cityVO,@ModelAttribute BloodBankVO bloodbankVO,HttpServletRequest request)
	{
		List cityList=cityService.searchCity(cityVO);
		HttpSession session=request.getSession(true);  
	    String AdminUserName=(String)session.getAttribute("AdminUserName");
	    System.out.println(AdminUserName);
	    if(AdminUserName=="nisarg"){
	    	return new ModelAndView("bloodbank/addBloodbank","bloodbankVO",new BloodBankVO()).addObject("cityList", cityList);
	    }
	    else{
	    	return new ModelAndView("redirect:/admin");
	    }
		
	}
	@RequestMapping(value="/insertCity",method=RequestMethod.POST)
	public ModelAndView insert(@ModelAttribute CityVO cityVO,HttpServletRequest request)
	{
		cityVO.setCityStaus(true);
		this.cityService.insertCity(cityVO);
		List cityList=cityService.searchCity(cityVO);
		HttpSession session=request.getSession(true);  
	    String AdminUserName=(String)session.getAttribute("AdminUserName");
	    System.out.println(AdminUserName);
	    if(AdminUserName=="nisarg"){
	    	return new ModelAndView("admin/addArea","areaVO",new AreaVO()).addObject("cityList", cityList);
	    }
	    else{
	    	return new ModelAndView("redirect:/admin");
	    }
		
	}
	
	
}
