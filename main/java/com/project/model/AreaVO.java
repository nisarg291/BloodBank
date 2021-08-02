package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="area_tbl")
public class AreaVO {
	@Id
	@Column(name="area_id")
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int aid;
	@Column(name="area_name")
	private String areaName;
	
	@Column(name="pincode")
	private String pinCode;
	@Column(name="area_status")
	private Boolean areaStaus;
	@ManyToOne 
	private CityVO cityVO;
	public CityVO getCityVO() {
		return cityVO;
	}

	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int id) {
		this.aid = id;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public Boolean getAreaStaus() {
		return areaStaus;
	}

	public void setAreaStaus(Boolean areaStaus) {
		this.areaStaus = areaStaus;
	}



}
