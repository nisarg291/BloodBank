package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UserDAO;
import com.project.model.UserVO;

@Service
public class UserServiceImp implements UserService{
@Autowired UserDAO userdao;
	
	@Transactional
	public void insertUser(UserVO userVO)
	{
		userdao.insertUser(userVO);
	}
	@Transactional
	public List searchUser(UserVO userVO)
	{
		List bloodbankList=userdao.searchUser(userVO);
		return bloodbankList;
	}
	@Transactional
	public List verifyUser(UserVO userVO)
	{
		List bloodbankList=userdao.verifyUser(userVO);
		return bloodbankList;
	}
}
