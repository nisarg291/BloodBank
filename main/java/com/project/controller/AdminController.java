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
import com.project.model.BloodBankVO;
import com.project.model.CityVO;

import com.project.model.AdminVO;
import com.project.service.AreaService;
import com.project.service.AdminService;

import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value="/admin")
	public ModelAndView adminPage(HttpServletRequest request)
	{
		return new ModelAndView("admin/login","adminVO",new AdminVO());
	}
	
	@RequestMapping(value="/verifyAdmin",method=RequestMethod.POST)
	public ModelAndView verifyAdmin(@ModelAttribute AdminVO adminVO, HttpServletRequest request)
	{
//		String email=request.getParameter("email");
//		String password=request.getParameter("password");
//		System.out.print(email);
//		System.out.print(password);
//		if(email=="nisargadalja135790@gmail.com"){
//			if(password=="NisHit@2620029164#"){
//				HttpSession ses1=request.getSession();  
////			    session.setAttribute("uname",n);  
//				ses1.setAttribute("AdminUserName","nisarg");
//				return new ModelAndView("admin/index");
//			}
//			else{
//				return new ModelAndView("redirect:/admin");
//			}
//		}
		System.out.println("controller user name"+adminVO.getAdminEmail());
		System.out.println("controller pass"+adminVO.getAdminPassword());
		List adminList=adminService.verifyAdmin(adminVO);
		//HttpSession session=request.getSession(false);  
	    //String uname=(String)session.getAttribute("uname"); 
		if(adminList.size()>=1){
			HttpSession ses=request.getSession();  
//		    session.setAttribute("uname",n);  
			ses.setAttribute("AdminUserName","nisarg");
			return new ModelAndView("admin/index");	
		}
		System.out.println("list"+adminList);
		System.out.println("size"+adminList.size());
		
		return new ModelAndView("redirect:/admin");
		//return new ModelAndView("redirect:/admin");
	}
	@RequestMapping(value="/adminViewComplain")
	public ModelAndView adminViewComplain(HttpServletRequest request)
	{
		return new ModelAndView("admin/viewComplain");
	}
	@RequestMapping(value="/adminLogout")
	public ModelAndView adminLogout(HttpServletRequest request)
	{
		 HttpSession session=request.getSession();  
         session.invalidate();  
	    return new ModelAndView("admin/logout","adminVO",new AdminVO());
	}
}
