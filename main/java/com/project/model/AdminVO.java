package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin_tbl")
public class AdminVO {
	@Id
	@Column(name="admin_id")
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int adminid;
	
	@Column(name="admin_email")
	private String adminEmail;
	

	@Column(name="admin_password")
	private String adminPassword;


	public String getAdminEmail() {
		return adminEmail;
	}


	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}


	public String getAdminPassword() {
		return adminPassword;
	}


	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}


	public int getAdminid() {
		return adminid;
	}


	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	
	
}
