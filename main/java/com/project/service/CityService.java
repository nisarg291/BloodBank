package com.project.service;

import java.util.*;

import com.project.model.CityVO;



public interface CityService {
	public void insertCity(CityVO cityVO);
	public List searchCity(CityVO cityVO);
}
