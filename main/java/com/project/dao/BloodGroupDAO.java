package com.project.dao;

import java.util.List;

import com.project.model.BloodGroupVO;

public interface BloodGroupDAO {
	public void insertBloodGroup(BloodGroupVO bloodGroupVO);
	public List searchBloodGroup(BloodGroupVO bloodGroupVO);
	public List searchBloodGroupFromBloodBank(BloodGroupVO bloodGroupVO);
//	public List searchBloodBankFromId(int bloodbankUserName);
}
