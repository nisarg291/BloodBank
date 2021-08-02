package com.project.dao;

import java.util.List;

import com.project.model.AreaVO;


public interface AreaDAO {
	public void insertArea(AreaVO areaVO);
	public List searchArea(AreaVO areaVO);
	public List searchAreaFromCity(AreaVO areaVO);
}
