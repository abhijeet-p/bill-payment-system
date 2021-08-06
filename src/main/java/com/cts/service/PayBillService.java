package com.cts.service;

import java.util.List;

import com.cts.entity.Bill;

public interface PayBillService {
	
	void payBill(Bill bill);
	List<Bill> showAllBills(String username);
	List<Bill> showAllBillsByStatus(String username, String billType);
	Bill findBillById(int billId);
	void deleteBill(int billId);

}
