package com.cts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.dao.PayBillDAO;
import com.cts.entity.Bill;


@Service("billService")
public class PayBillServiceImpl implements PayBillService{
	
	@Autowired
	PayBillDAO billDAO;

	@Override
	@Transactional
	public void payBill(Bill bill) {
		
		billDAO.payBill(bill);
	}

	@Override
	@Transactional
	public List<Bill> showAllBills(String username) {
		
		return billDAO.showBill(username);
	}

	@Override
	@Transactional
	public List<Bill> showAllBillsByStatus(String username, String billType) {
		
		
		return billDAO.showBillByStatus(username, billType);
	}

	@Override
	@Transactional
	public Bill findBillById(int billId) {
	
		return billDAO.findBillById(billId);
	}

	@Override
	@Transactional
	public void deleteBill(int billId) {
		billDAO.deleteBill(billId);
		
	}

}
