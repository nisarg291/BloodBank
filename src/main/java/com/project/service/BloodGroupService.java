package com.project.service;

import java.util.List;

import com.project.model.BloodGroupVO;

public interface BloodGroupService {
	public void insertBloodGroup(BloodGroupVO bloodGroupVO);
	public List searchBloodGroup(BloodGroupVO bloodGroupVO);
	public List searchBloodGroupFromBloodBank(BloodGroupVO bloodGroupVO);
}
