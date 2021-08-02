package com.project.controller;

import java.util.List;
import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVO;
import com.project.model.CityVO;
import com.project.model.BloodBankVO;
import com.project.model.BloodGroupVO;
import com.project.service.BloodBankService;

@Controller
public class BloodbankController {
	@Autowired
	BloodBankService bloodbankService;
	
	@RequestMapping(value="/insertBloodbank",method=RequestMethod.POST)
	public ModelAndView insertArea(@ModelAttribute BloodBankVO bloodbankVO)
	{
		System.out.println("hi hello ");
		System.out.println(bloodbankVO.getAreaVO().getAreaName());
		bloodbankVO.setBloodbankStatus(true);
		this.bloodbankService.insertBloodBank(bloodbankVO);
		return new ModelAndView("redirect:/login");
	}
	@RequestMapping(value="/login")
	public ModelAndView loginPage(HttpServletRequest request)
	{
//		HttpSession session=request.getSession();  
////	    session.setAttribute("uname",n);  
//		session.setAttribute("uname","nisarg");
		return new ModelAndView("bloodbank/login","bloodbankVO",new BloodBankVO());
	}
	@RequestMapping(value="/bloodbank")
	public ModelAndView bloodbankPage(HttpServletRequest request)
	{
	    return new ModelAndView("bloodbank/login","bloodbankVO",new BloodBankVO());
	}
	@RequestMapping(value="/bloodbankLogout")
	public ModelAndView bloodbankLogout(HttpServletRequest request)
	{
		 HttpSession session=request.getSession();  
         session.invalidate();  
	    return new ModelAndView("bloodbank/logout","bloodbankVO",new BloodBankVO());
	}
	@RequestMapping(value="/verifyBloodbank")
	public ModelAndView verifyBloodbank(@ModelAttribute BloodBankVO bloodbankVO,HttpServletRequest request)
	{
		System.out.println("controller user name"+bloodbankVO.getBloodbankUserName());
		System.out.println("controller pass"+bloodbankVO.getBloodbankPassword());
		List bloodbankList=bloodbankService.verifyBloodBank(bloodbankVO);
		//HttpSession session=request.getSession(false);  
	    //String uname=(String)session.getAttribute("uname"); 
		if(bloodbankList.size()>=1){
			//System.out.println("bloodbankList",bloodbankList);
			HttpSession ses=request.getSession();  
//		    session.setAttribute("uname",n);  
			ses.setAttribute("uname","nisarg");
			ses.setAttribute("bloodbankUserName",bloodbankVO.getBloodbankUserName());
			ses.setAttribute("bloodbankPassword",bloodbankVO.getBloodbankPassword());
			return new ModelAndView("bloodbank/index");	
			}
		System.out.println("list"+bloodbankList);
		System.out.println("size"+bloodbankList.size());
		
		return new ModelAndView("redirect:/login");
	}
	@RequestMapping(value="/addBloodgroup")
	public ModelAndView AddBloodgroup(@ModelAttribute BloodBankVO bloodbankVO,@ModelAttribute BloodGroupVO bloodGroupVO,HttpServletRequest request) 
	{
		HttpSession session=request.getSession(false);  
	    String uname=(String)session.getAttribute("uname");
	    //int bloodbankId=(int)session.getAttribute("bloodbankId");
	    String bloodbankUserName=(String)session.getAttribute("bloodbankUserName");
	    String bloodbankPassword=(String)session.getAttribute("bloodbankPassword");
	    System.out.println(uname);
	    BloodGroupVO bloodgroupVO=new BloodGroupVO();
	  
	    List bloodbankList=this.bloodbankService.searchBloodBankById(bloodbankUserName,bloodbankPassword);
	    System.out.println("bloodbankList"+bloodbankList);
	    //bloodGroupVO.setBloodbankVO(bloodbankList[0]);
	    if(uname=="nisarg"){
	    	
	    	return new ModelAndView("bloodbank/addBloodgroup","bloodGroupVO",bloodgroupVO).addObject("bloodbankList", bloodbankList);
		}
		else{
			return new ModelAndView("redirect:/login");
		}
		//return new ModelAndView("bloodbank/addBloodgroup");
	}
	@RequestMapping(value="/viewBloodgroup")
	public ModelAndView ViewBloodgroup(HttpServletRequest request) 
	{
		HttpSession session=request.getSession(false);  
	    String uname=(String)session.getAttribute("uname");
	    String adminuname=(String)session.getAttribute("AdminUserName");
	    System.out.println(uname);
	    if(uname=="nisarg" || adminuname=="nisarg"){
	    	return new ModelAndView("bloodbank/viewBloodgroup");
		}
		else{
			return new ModelAndView("redirect:/login");
		}
		//return new ModelAndView("bloodbank/viewBloodgroup");
	}
	@RequestMapping(value = "/viewBloodbank")
	public ModelAndView loadReg2(@ModelAttribute BloodBankVO bloodbankVO,HttpServletRequest request) 
	{
		List bloodbankList=bloodbankService.searchBloodBank(bloodbankVO);
		HttpSession session=request.getSession(false);  
	    String uname=(String)session.getAttribute("AdminUserName");
	    System.out.println(uname);
	    if(uname=="nisarg"){
	    	return new ModelAndView("admin/viewBloodbank","bloodbankList",bloodbankList);
		}
		else{
			return new ModelAndView("redirect:/login");
		}
		
		//return new ModelAndView("admin/viewBloodbank","bloodbankList",bloodbankList);
	}
}
