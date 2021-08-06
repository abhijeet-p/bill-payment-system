package com.cts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.dao.VendorDAO;
import com.cts.dao.VendorDAO;
import com.cts.entity.Vendor;
import com.cts.entity.Vendor;

@Service("vendorService")
public class VendorServiceImpl implements VendorService{
	
	@Autowired
	VendorDAO vendorDAO;

	@Override
	@Transactional
	public List<Vendor> getAllVendors() {
		System.out.println("In List Service"+vendorDAO);
		return vendorDAO.listAllVendors();
	}

	@Override
	@Transactional
	public void saveVendor(Vendor vendor) {
			vendorDAO.saveVendor(vendor);
	}

	@Override
	@Transactional
	public Vendor getVendor(String theVendorName) {
		 
		return vendorDAO.getVendor(theVendorName);
	}

	@Override
	@Transactional
	public void deleteVendor(String theVendorName) {
	vendorDAO.deleteVendor(theVendorName);
		
	}

	
	

}
