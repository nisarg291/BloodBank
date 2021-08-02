package com.project.service;
import java.util.*;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CityDAO;
import com.project.model.CityVO;
@Service
public class CityServiceImp implements CityService {
	@Autowired CityDAO cityDAO;
	
	@Transactional
	public void insertCity(CityVO cityVO)
	{
		cityDAO.insertCity(cityVO);
	}
	@Transactional
	public List searchCity(CityVO cityVO)
	{
		List cityList=cityDAO.searchCity(cityVO);
		return cityList;
	}
}
