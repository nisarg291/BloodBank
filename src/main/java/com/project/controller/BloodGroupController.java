package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.BloodBankVO;
import com.project.model.BloodGroupVO;
import com.project.service.BloodGroupService;

@Controller
public class BloodGroupController {
	@Autowired
	BloodGroupService bloodgroupService;
	
	@RequestMapping(value="/insertBloodGroup",method=RequestMethod.POST)
	public ModelAndView insertBloodgroup(@ModelAttribute BloodGroupVO bloodGroupVO,@ModelAttribute BloodBankVO bloodbankVO,HttpServletRequest request)
	{
		HttpSession session=request.getSession(false);
		String bloodbankUserName=(String)session.getAttribute("bloodbankUserName");
	    String bloodbankPassword=(String)session.getAttribute("bloodbankPassword");
		System.out.println("hi hello");
		//System.out.println(bloodgroupVO.getAreaVO().getAreaName());
		bloodGroupVO.setBloodGroupStatus(true);
		//bloodgroupVO.setBloodbankVO(bloodbankVO);
		this.bloodgroupService.insertBloodGroup(bloodGroupVO);
		return new ModelAndView("bloodbank/index");
	}
//	@RequestMapping(value = "/viewBloodgroup")
//	public ModelAndView loadReg4(@ModelAttribute BloodGroupVO bloodgroupVO,HttpServletRequest request) 
//	{
//		List bloodgroupList=this.bloodgroupService.searchBloodGroup(bloodgroupVO);
//		HttpSession session=request.getSession(false);  
//	    String uname=(String)session.getAttribute("uname");
//	    System.out.println(uname);
//	    if(uname=="nisarg"){
//	    	return new ModelAndView("bloodbank/viewBloodgroup","bloodgroupList",bloodgroupList);
//		}
//		else{
//			return new ModelAndView("redirect:/bloodbank");
//		}
//		
//		//return new ModelAndView("admin/viewBloodbank","bloodbankList",bloodbankList);
//	}
}
