package com.project.service;
import java.util.List;


import com.project.model.AdminVO;

public interface AdminService {
	public void insertAdmin(AdminVO adminVO);
	public List searchAdmin(AdminVO adminVO);
	public List verifyAdmin(AdminVO adminVO);
}
