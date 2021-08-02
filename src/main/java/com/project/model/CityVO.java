package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="city_tbl")
public class CityVO {
	@Id
	@Column(name="city_id")
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int cid;
	
	@Column(name="city_name")
	private String cityName;
	
	@Column(name="city_description")
	private String cityDescription;

	@Column(name="city_status")
	private Boolean cityStaus;

	

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getCityDescription() {
		return cityDescription;
	}

	public void setCityDescription(String cityDescription) {
		this.cityDescription = cityDescription;
	}

	public Boolean getCityStaus() {
		return cityStaus;
	}

	public void setCityStaus(Boolean cityStaus) {
		this.cityStaus = cityStaus;
	}

	

	
	
}
