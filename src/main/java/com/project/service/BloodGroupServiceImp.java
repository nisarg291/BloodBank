package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.BloodBankDAO;
import com.project.dao.BloodGroupDAO;
import com.project.model.AreaVO;
import com.project.model.BloodBankVO;
import com.project.model.BloodGroupVO;

@Service
public class BloodGroupServiceImp implements BloodGroupService {
@Autowired BloodGroupDAO bloodgroupdao;
	
	@Transactional
	public void insertBloodGroup(BloodGroupVO bloodGroupVO)
	{
		bloodgroupdao.insertBloodGroup(bloodGroupVO);
	}
	@Transactional
	public List searchBloodGroup(BloodGroupVO bloodGroupVO)
	{
		List bloodgroupList=bloodgroupdao.searchBloodGroup(bloodGroupVO);
		return bloodgroupList;
	}
	@Transactional
	public List searchBloodGroupFromBloodBank(BloodGroupVO bloodGroupVO)
	{
		List bloodgroupList=bloodgroupdao.searchBloodGroupFromBloodBank(bloodGroupVO);
		return bloodgroupList;
	}
}
