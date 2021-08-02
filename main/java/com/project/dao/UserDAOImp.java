package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.UserVO;

@Repository
public class UserDAOImp implements UserDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	public void insertUser(UserVO userVO) {
		Session session = sessionFactory.getCurrentSession();
		session.save(userVO);
	}
	public List searchUser(UserVO userVO)
	{
		Session session = sessionFactory.getCurrentSession();
			
		Query q = session.createQuery("from UserVO");
		
		List bloodbanklist = q.list();
		return bloodbanklist;
	}
	public List verifyUser(UserVO userVO)
	{
		Session session = sessionFactory.getCurrentSession();
		System.out.println("dao username"+userVO.getUserUserName());
		Query q = session.createQuery("from UserVO where user_username='"+userVO.getUserUserName()+"' and user_password='"+userVO.getUserPassword()+"'");
		
		List bloodbanklist = q.list();
		return bloodbanklist;
	}

}
