package com.project.service;

import java.util.List;

import com.project.model.UserVO;

public interface UserService {
	public void insertUser(UserVO userVO);
	public List searchUser(UserVO userVO);
	public List verifyUser(UserVO userVO);
}
