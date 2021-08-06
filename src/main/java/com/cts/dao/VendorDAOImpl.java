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

import com.cts.entity.Vendor;
import com.cts.entity.Vendor;

@Repository("vendorDAO")
public class VendorDAOImpl implements VendorDAO{
	@Autowired
	private SessionFactory sessionFactory;

	final Logger logger=Logger.getLogger(VendorDAOImpl.class);

	
	@Override
	public List<Vendor> listAllVendors(){
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<Vendor> cq=cb.createQuery(Vendor.class);
		Root<Vendor> root =cq.from(Vendor.class);
		cq.select(root);
		Query query =session.createQuery(cq);
		return query.getResultList();
	}


	@Override
	public void saveVendor(Vendor vendor) {	
		try{
		sessionFactory.getCurrentSession().saveOrUpdate(vendor);
		}catch(Exception e){
			logger.info("Error: "+e.toString());
		}
	}




	@Override
	public Vendor getVendor(String vendorName) {
		Session session=sessionFactory.getCurrentSession();
		Vendor theVendor =session.get(Vendor.class, vendorName);
		return theVendor;
	}



	@Override
	public void deleteVendor(String vendorName) {
		Session session=sessionFactory.getCurrentSession();
		Vendor vendor =session.byId(Vendor.class).load(vendorName);
		session.delete(vendor);
		
	}

	
	

}
