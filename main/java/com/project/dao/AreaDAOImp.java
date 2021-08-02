package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AreaVO;


@Repository
public class AreaDAOImp implements AreaDAO{
	@Autowired
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void insertArea(AreaVO areaVO) {
		Session session = sessionFactory.getCurrentSession();
		session.save(areaVO);
	}
	public List searchArea(AreaVO areaVO)
	{
		Session session = sessionFactory.getCurrentSession();
			
		Query q = session.createQuery("from AreaVO");
		
		List arealist = q.list();
		return arealist;
	}
	public List searchAreaFromCity(AreaVO areaVO)
	{
			
			Session session = sessionFactory.getCurrentSession();
			
			Query q=session.createQuery("from AreaVO where cityVO_city_id='"+areaVO.getCityVO().getCid()+"'");
			
			List areaList=q.list();
	
		return areaList;
	}
}
