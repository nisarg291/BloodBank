package com.project.dao;
import java.util.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CityVO;



@Repository
public class CityDAOImp implements CityDAO{
	@Autowired
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void insertCity(CityVO cityVO) {
		Session session = sessionFactory.getCurrentSession();
		session.save(cityVO);
	}
	public List searchCity(CityVO cityVO)
	{
		Session session = sessionFactory.getCurrentSession();
			
		Query q = session.createQuery("from CityVO");
		
		List ls = q.list();
		return ls;
	}
}
