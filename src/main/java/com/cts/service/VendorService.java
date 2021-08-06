package com.cts.service;

import java.util.List;

import com.cts.entity.Vendor;
import com.cts.entity.Vendor;

public interface VendorService {
	
	List<Vendor> getAllVendors();
	void saveVendor(Vendor theVendor);
	public Vendor getVendor(String vendorName);
	public void deleteVendor(String vendorName);
	

}
