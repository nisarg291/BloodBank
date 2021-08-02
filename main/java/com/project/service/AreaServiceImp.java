package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.AreaDAO;
import com.project.dao.CityDAO;
import com.project.model.AreaVO;
import com.project.model.CityVO;

@Service
public class AreaServiceImp implements AreaService{
@Autowired AreaDAO areadao;
	
	@Transactional
	public void insertArea(AreaVO areaVO)
	{
		areadao.insertArea(areaVO);
	}
	@Transactional
	public List searchArea(AreaVO areaVO)
	{
		List areaList=areadao.searchArea(areaVO);
		return areaList;
	}
	@Transactional
	public List searchAreaFromCity(AreaVO areaVO)
	{
		List areaList=areadao.searchAreaFromCity(areaVO);
		return areaList;
	}
	
}
