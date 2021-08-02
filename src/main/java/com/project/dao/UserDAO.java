package com.project.dao;

import java.util.List;

import com.project.model.BloodBankVO;
import com.project.model.UserVO;

public interface UserDAO {
	public void insertUser(UserVO userVO);
	public List searchUser(UserVO userVO);
	public List verifyUser(UserVO userVO);
}
