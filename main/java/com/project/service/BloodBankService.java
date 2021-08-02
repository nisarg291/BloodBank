package com.project.service;

import java.util.List;

import com.project.model.AreaVO;
import com.project.model.CityVO;
import com.project.model.BloodBankVO;

public interface BloodBankService {
	public void insertBloodBank(BloodBankVO bloodbankVO);
	public List searchBloodBank(BloodBankVO bloodbankVO);
	public List verifyBloodBank(BloodBankVO bloodbankVO);
	public List searchBloodBankById(String bloodbankUserName,String bloodbankPassword);
}
