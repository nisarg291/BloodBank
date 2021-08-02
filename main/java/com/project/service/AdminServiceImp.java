package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.AdminDAO;
import com.project.model.AdminVO;

@Service
public class AdminServiceImp implements AdminService {
	@Autowired AdminDAO admindao;
	
	@Transactional
	public void insertAdmin(AdminVO adminVO)
	{
		admindao.insertAdmin(adminVO);
	}
	@Transactional
	public List searchAdmin(AdminVO adminVO)
	{
		List bloodbankList=admindao.searchAdmin(adminVO);
		return bloodbankList;
	}
	@Transactional
	public List verifyAdmin(AdminVO adminVO)
	{
		List bloodbankList=admindao.verifyAdmin(adminVO);
		return bloodbankList;
	}
}
