package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVO;
import com.project.model.CityVO;

import com.project.model.BloodBankVO;
import com.project.service.AreaService;
import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
@Controller
public class AreaController {
	@Autowired
	AreaService areaService;
	
	@RequestMapping(value="/insertArea",method=RequestMethod.POST)
	public ModelAndView insertArea(@ModelAttribute AreaVO areaVO)
	{
		System.out.println("hi hello ");
		System.out.println(areaVO.getCityVO().getCityName());
		areaVO.setAreaStaus(true);
		this.areaService.insertArea(areaVO);
		return new ModelAndView("redirect:/addArea");
	}
	@RequestMapping(value="/verifyArea",method=RequestMethod.GET)
	public ModelAndView menu2(@ModelAttribute AreaVO areaVO,@RequestParam int cid){
		CityVO cityVO=new CityVO();
		cityVO.setCid(cid);
		areaVO.setCityVO(cityVO);
		List areaList=this.areaService.searchAreaFromCity(areaVO);
		return new ModelAndView("admin/verifyArea","areaList",areaList);
	}
	@RequestMapping(value = "/viewArea")
	public ModelAndView loadReg2(@ModelAttribute AreaVO areaVO,HttpServletRequest request) 
	{
		List areaList=areaService.searchArea(areaVO);
		HttpSession session1=request.getSession(true);  
		String AdminUserName=(String)session1.getAttribute("AdminUserName");
	    System.out.println(AdminUserName);
	    if(AdminUserName=="nisarg"){
	    	return new ModelAndView("admin/viewArea","areaList",areaList);
	    }
	    else{
	    	return new ModelAndView("redirect:/admin");
	    }
		
	}
}
