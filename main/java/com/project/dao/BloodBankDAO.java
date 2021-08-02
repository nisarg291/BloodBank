package com.project.dao;

import java.util.List;

import com.project.model.BloodBankVO;

public interface BloodBankDAO {
	public void insertBloodBank(BloodBankVO bloodbankVO);
	public List searchBloodBank(BloodBankVO bloodbankVO);
	public List verifyBloodBank(BloodBankVO bloodbankVO);
	public List searchBloodBankById(String bloodbankUserName,String bloodbankPassword);
}
