package com.project.dao;

import java.util.*;

import com.project.model.CityVO;


public interface CityDAO {
	public void insertCity(CityVO cityView);
	public List searchCity(CityVO cityView);
}
