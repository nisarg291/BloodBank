package com.project.dao;

import java.util.List;

import com.project.model.AdminVO;

public interface AdminDAO {
	public void insertAdmin(AdminVO adminVO);
	public List searchAdmin(AdminVO adminVO);
	public List verifyAdmin(AdminVO adminVO);
}
