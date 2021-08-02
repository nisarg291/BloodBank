package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AreaVO;
import com.project.model.BloodBankVO;
import com.project.model.BloodGroupVO;

@Repository
public class BloodGroupDAOImp implements BloodGroupDAO {
	@Autowired
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	public void insertBloodGroup(BloodGroupVO bloodGroupVO) {
		Session session = sessionFactory.getCurrentSession();
		session.save(bloodGroupVO);
	}
	public List searchBloodGroup(BloodGroupVO bloodGroupVO)
	{
		Session session = sessionFactory.getCurrentSession();
			
		Query q = session.createQuery("from BloodGroupVO");
		
		List bloodGrouplist = q.list();
		return bloodGrouplist;
	}
	public List searchBloodGroupFromBloodBank(BloodGroupVO bloodGroupVO)
	{
			
			Session session = sessionFactory.getCurrentSession();
			
			Query q=session.createQuery("from BloodGroupVO where bloodbankVO_bloodbank_id='"+bloodGroupVO.getBloodbankVO().getBloodbankid()+"'");
			
			List areaList=q.list();
	
		return areaList;
	}
	

}
