package com.cts.dao;

import java.util.List;

import com.cts.entity.Vendor;
import com.cts.entity.Vendor;

public interface VendorDAO {
	

	void  saveVendor(Vendor vendor);
  List<Vendor>  listAllVendors();
 Vendor getVendor(String vendorName);
 void deleteVendor(String vendorName);

}
