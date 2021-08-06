package com.cts.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



@Service("adminService")
public class AdminServiceImpl implements AdminService {


	

/*	@Autowired
	AdminDAO userDAO;

	@Override
	@Transactional
	public List<Admin> getAllAdmins() {
		System.out.println("In List Service"+userDAO);
		return userDAO.listAllAdmins();
	}

	@Override
	@Transactional
	public void saveAdmin(Admin product) {
			userDAO.saveAdmin(product);
	}

	@Override
	@Transactional
	public Admin getAdmin(int theId) {
		 
		return userDAO.getAdmin(theId);
	}

	@Override
	@Transactional
	public void deleteAdmin(int theId) {
	userDAO.deleteAdmin(theId);
		
	}*/

}
