package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="bloodgroup_tbl")
public class BloodGroupVO {
	@Id
	@Column(name="bloodgroup_id")
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int bid;
	@Column(name="bloodgroup_type")
	private String bloodGroupType;
//	@Column(name="bloodbank_id")
//	private int bloodbank_id;
//	@Column(name="bloodbank_name")
//	private String bloodbank_name;
	@Column(name="total_stock")
	private String totalStock;
	@Column(name="required_stock")
	private Boolean requiredStock;
	
	@Column(name="bloodgroup_status")
	private Boolean bloodGroupStatus;
	
	@ManyToOne 
	private BloodBankVO bloodbankVO;
	
	
	public Boolean getBloodGroupStatus() {
		return bloodGroupStatus;
	}
	public void setBloodGroupStatus(Boolean bloodGroupStatus) {
		this.bloodGroupStatus = bloodGroupStatus;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBloodGroupType() {
		return bloodGroupType;
	}
	public void setBloodGroupType(String bloodGroupType) {
		this.bloodGroupType = bloodGroupType;
	}
	public String getTotalStock() {
		return totalStock;
	}
	public void setTotalStock(String totalStock) {
		this.totalStock = totalStock;
	}
	public Boolean getRequiredStock() {
		return requiredStock;
	}
	public void setRequiredStock(Boolean requiredStock) {
		this.requiredStock = requiredStock;
	}
	public BloodBankVO getBloodbankVO() {
		return bloodbankVO;
	}
	public void setBloodbankVO(BloodBankVO bloodbankVO) {
		this.bloodbankVO = bloodbankVO;
	}
	
	
	
	
	
}
