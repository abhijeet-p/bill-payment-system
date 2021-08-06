package com.cts.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.entity.Bill;
import com.cts.entity.User;
import com.cts.entity.Vendor;



@Repository("billDAO")
public class PayBillDAOImpl implements PayBillDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	final Logger logger=Logger.getLogger(PayBillDAOImpl.class);

	@Override
	public void payBill(Bill bill) {
	try{	
		sessionFactory.getCurrentSession().saveOrUpdate(bill);
	}catch(Exception e){
			logger.info("Error: "+e.toString());
		}
	}

	@Override
	public List<Bill> showBill(String username) {
		
		Session session =sessionFactory.getCurrentSession();
		User user=	session.get(User.class, username);
		return user.getBills();
	}

	@Override
	public List<Bill> showBillByStatus(String username, String billType) {
		Session session =sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Bill> cq = cb.createQuery(Bill.class);
		Root<Bill> from = cq.from(Bill.class);
		cq.where(cb.equal(from.get("billStatus"),"Pending"),cb.equal(from.get("billType"), billType));
		Query query = session.createQuery(cq);
		List<Bill> result = query.getResultList();
		return result;
	}

	@Override
	public Bill findBillById(int billId) {
		Session session=sessionFactory.getCurrentSession();
		Bill theBill =session.get(Bill.class, billId);
		return theBill;
	}

	@Override
	public void deleteBill(int billId) {
		Session session=sessionFactory.getCurrentSession();
		Bill bill=session.byId(Bill.class).load(billId);
		session.delete(bill);
	}

}
