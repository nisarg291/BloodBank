package com.project.service;

import java.util.List;

import com.project.model.AreaVO;
import com.project.model.CityVO;


public interface AreaService {
	
	public void insertArea(AreaVO areaVO);
	public List searchArea(AreaVO areaVO);
	public List searchAreaFromCity(AreaVO areaVO);
}
