package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.BloodBankDAO;
import com.project.model.BloodBankVO;

@Service
public class BloodBankServiceImp implements BloodBankService {
	@Autowired BloodBankDAO bloodbankdao;
	
	@Transactional
	public void insertBloodBank(BloodBankVO bloodbankVO)
	{
		bloodbankdao.insertBloodBank(bloodbankVO);
	}
	@Transactional
	public List searchBloodBank(BloodBankVO bloodbankVO)
	{
		List bloodbankList=bloodbankdao.searchBloodBank(bloodbankVO);
		return bloodbankList;
	}
	@Transactional
	public List verifyBloodBank(BloodBankVO bloodbankVO)
	{
		List bloodbankList=bloodbankdao.verifyBloodBank(bloodbankVO);
		return bloodbankList;
	}
	@Transactional
	public List searchBloodBankById(String bloodbankUserName,String bloodbankPassword)
	{
		List bloodbankList=bloodbankdao.searchBloodBankById(bloodbankUserName,bloodbankPassword);
		return bloodbankList;
	}
}
