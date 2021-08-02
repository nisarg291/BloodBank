package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AdminVO;
import com.project.model.AreaVO;
import com.project.model.BloodBankVO;
import com.project.model.CityVO;

import com.project.model.UserVO;
import com.project.service.AreaService;
import com.project.service.UserService;

import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/user")
	public ModelAndView userPage(HttpServletRequest request)
	{
		return new ModelAndView("user/login","userVO",new UserVO());
	}
	@RequestMapping(value="/userRegister")
	public ModelAndView userRegister(@ModelAttribute UserVO userVO,HttpServletRequest request)
	{
		return new ModelAndView("user/register","userVO",new UserVO());
	}
	@RequestMapping(value="/verifyUser",method=RequestMethod.POST)
	public ModelAndView verifyUser(@ModelAttribute UserVO userVO, HttpServletRequest request)
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
		System.out.println("controller user name"+userVO.getUserUserName());
		System.out.println("controller pass"+userVO.getUserPassword());
		List userList=userService.verifyUser(userVO);
		//HttpSession session=request.getSession(false);  
	    //String uname=(String)session.getAttribute("uname"); 
		if(userList.size()>=1){
			HttpSession ses=request.getSession();  
//		    session.setAttribute("uname",n);  
			ses.setAttribute("uname","nisarg");
			return new ModelAndView("user/index");	
		}
		System.out.println("list"+userList);
		System.out.println("size"+userList.size());
		
		return new ModelAndView("redirect:/user");
		//return new ModelAndView("redirect:/admin");
	}
	@RequestMapping(value="/userAddComplain")
	public ModelAndView adminAddComplain(HttpServletRequest request)
	{
		return new ModelAndView("user/addComplain");
	}
	@RequestMapping(value="/userViewComplain")
	public ModelAndView adminViewComplain(HttpServletRequest request)
	{
		return new ModelAndView("user/viewComplain");
	}
	@RequestMapping(value="/userLogout")
	public ModelAndView adminLogout(HttpServletRequest request)
	{
		 HttpSession session=request.getSession();  
         session.invalidate();  
	    return new ModelAndView("user/logout","adminVO",new UserVO());
	}
}
