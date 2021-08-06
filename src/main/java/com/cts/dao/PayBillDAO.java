package com.cts.dao;

import java.util.List;

import com.cts.entity.Bill;

public interface PayBillDAO {
	
	void payBill(Bill bill);

	List<Bill> showBill(String username);
	
	List<Bill> showBillByStatus(String username, String billType);

	Bill findBillById(int billId);

	void deleteBill(int billId);

}
