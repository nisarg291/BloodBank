package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="bloodbank_tbl")
public class BloodBankVO {
	@Id
	@Column(name="bloodbank_id")
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int bloodbankid;
	
	@Column(name="bloodbank_name")
	private String bloodbankName;
	
	@Column(name="bloodbank_branchname")
	private String bloodbankBranchName;
	
	@Column(name="bloodbank_address")
	private String bloodbankAddress;
	
	@Column(name="bloodbank_email")
	private String bloodbankEmail;
	
	@Column(name="bloodbank_username")
	private String bloodbankUserName;
	
	@Column(name="bloodbank_password")
	private String bloodbankPassword;

	@Column(name="bloodbank_phoneno")
	private String bloodbankPhoneNo;

	@Column(name="bloodbank_status")
	private Boolean bloodbankStatus;
	
	@ManyToOne 
	private AreaVO areaVO;

	public String getBloodbankUserName() {
		return bloodbankUserName;
	}

	public void setBloodbankUserName(String bloodbankUserName) {
		this.bloodbankUserName = bloodbankUserName;
	}

	public String getBloodbankPassword() {
		return bloodbankPassword;
	}

	public void setBloodbankPassword(String bloodbankPassword) {
		this.bloodbankPassword = bloodbankPassword;
	}

	public int getBloodbankid() {
		return bloodbankid;
	}

	public void setBloodbankid(int bloodbankid) {
		this.bloodbankid = bloodbankid;
	}

	public String getBloodbankName() {
		return bloodbankName;
	}

	public void setBloodbankName(String bloodbankName) {
		this.bloodbankName = bloodbankName;
	}

	public String getBloodbankBranchName() {
		return bloodbankBranchName;
	}

	public void setBloodbankBranchName(String bloodbankBranchName) {
		this.bloodbankBranchName = bloodbankBranchName;
	}

	public String getBloodbankAddress() {
		return bloodbankAddress;
	}

	public void setBloodbankAddress(String bloodbankAddress) {
		this.bloodbankAddress = bloodbankAddress;
	}

	public String getBloodbankEmail() {
		return bloodbankEmail;
	}

	public void setBloodbankEmail(String bloodbankEmail) {
		this.bloodbankEmail = bloodbankEmail;
	}

	public String getBloodbankPhoneNo() {
		return bloodbankPhoneNo;
	}

	public void setBloodbankPhoneNo(String bloodbankPhoneNo) {
		this.bloodbankPhoneNo = bloodbankPhoneNo;
	}

	
	public Boolean getBloodbankStatus() {
		return bloodbankStatus;
	}

	public void setBloodbankStatus(Boolean bloodbankStatus) {
		this.bloodbankStatus = bloodbankStatus;
	}

	public AreaVO getAreaVO() {
		return areaVO;
	}

	public void setAreaVO(AreaVO areaVO) {
		this.areaVO = areaVO;
	}
}

