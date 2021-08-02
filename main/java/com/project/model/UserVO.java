package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_tbl")
public class UserVO {
	@Id
	@Column(name="user_id")
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int userid;
	
	@Column(name="user_ser_name")
	private String userUserName;
	
	@Column(name="user_address")
	private String userAddress;
	
	@Column(name="user_city")
	private String userCity;
	
	@Column(name="user_state")
	private String userState;
	
	@Column(name="user_email")
	private String userEmail;
	
	@Column(name="user_username")
	private String UserName;

	@Column(name="user_password")
	private String userPassword;
	
	@Column(name="user_phoneno")
	private String userPhoneNo;

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUserUserName() {
		return userUserName;
	}

	public void setUserUserName(String userUserName) {
		this.userUserName = userUserName;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserPhoneNo() {
		return userPhoneNo;
	}

	public void setUserPhoneNo(String userPhoneNo) {
		this.userPhoneNo = userPhoneNo;
	}

	
	
}
