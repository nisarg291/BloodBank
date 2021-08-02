package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AdminVO;

@Repository
public class AdminDAOImp implements AdminDAO{
	@Autowired
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	public void insertAdmin(AdminVO adminVO) {
		Session session = sessionFactory.getCurrentSession();
		session.save(adminVO);
	}
	public List searchAdmin(AdminVO adminVO)
	{
		Session session = sessionFactory.getCurrentSession();
			
		Query q = session.createQuery("from AdminVO");
		
		List bloodbanklist = q.list();
		return bloodbanklist;
	}
	public List verifyAdmin(AdminVO adminVO)
	{
		Session session = sessionFactory.getCurrentSession();
		System.out.println("dao email"+adminVO.getAdminEmail());
		Query q = session.createQuery("from AdminVO where admin_email='"+adminVO.getAdminEmail()+"' and admin_password='"+adminVO.getAdminPassword()+"'");
		
		List bloodbanklist = q.list();
		return bloodbanklist;
	}
}
