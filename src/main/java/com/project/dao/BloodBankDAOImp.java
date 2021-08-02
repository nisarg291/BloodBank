package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.BloodBankVO;

@Repository
public class BloodBankDAOImp implements BloodBankDAO {
	@Autowired
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	public void insertBloodBank(BloodBankVO bloodbankVO) {
		Session session = sessionFactory.getCurrentSession();
		session.save(bloodbankVO);
	}
	public List searchBloodBank(BloodBankVO bloodbankVO)
	{
		Session session = sessionFactory.getCurrentSession();
			
		Query q = session.createQuery("from BloodBankVO");
		
		List bloodbanklist = q.list();
		return bloodbanklist;
	}
	public List verifyBloodBank(BloodBankVO bloodbankVO)
	{
		Session session = sessionFactory.getCurrentSession();
		System.out.println("dao username"+bloodbankVO.getBloodbankUserName());
		Query q = session.createQuery("from BloodBankVO where bloodbank_username='"+bloodbankVO.getBloodbankUserName()+"' and bloodbank_password='"+bloodbankVO.getBloodbankPassword()+"'");
		
		List bloodbanklist = q.list();
		return bloodbanklist;
	}
	public List searchBloodBankById(String bloodbankUserName,String bloodbankPassword)
	{
		Session session = sessionFactory.getCurrentSession();
		//System.out.println("dao username"+bloodbankVO.getBloodbankUserName());
		Query q = session.createQuery("from BloodBankVO where bloodbank_username='"+bloodbankUserName+"' and bloodbank_password='"+bloodbankPassword+"'");
		
		List bloodbanklist = q.list();
		return bloodbanklist;
	}

}
