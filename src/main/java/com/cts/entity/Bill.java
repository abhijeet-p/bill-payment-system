package com.cts.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "bill_table")

public class Bill {

	@Id
	@Column(name = "billId", length = 50)
	@NotNull
	@GeneratedValue(strategy = GenerationType.AUTO)
	int billId;

	@Column(name = "amount", length = 10)
	@NotNull
	float amount;

	@Column(name = "cardNumber", unique = true, length = 15)
	@NotNull
	String cardNumber;

	@NotNull
	@Column(name = "billType", length = 50)
	String billType;

	@Column(name = "username")
	@NotNull
	String username;

	@Column(name = "pan")
	String pan;

	@Column(name = "vendorName")
	@NotNull
	String vendorName;

	@Column(name = "billStatus")
	String billStatus;

	@Column(name = "paymentThrough")
	@NotNull
	String paymentThrough;
	
	@Column(name = "cardCVV")
	String cardCVV;

	@Column(name = "cardName")
	String cardName;
	
	@Column(name = "cardExpiryDate")
	String cardExpiryDate;

	public Bill() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Bill(int billId, float amount, String cardNumber, String billType, String username, String pan,
			String vendorName, String billStatus, String paymentThrough, String cardCVV, String cardName,
			String cardExpiryDate) {
		super();
		this.billId = billId;
		this.amount = amount;
		this.cardNumber = cardNumber;
		this.billType = billType;
		this.username = username;
		this.pan = pan;
		this.vendorName = vendorName;
		this.billStatus = billStatus;
		this.paymentThrough = paymentThrough;
		this.cardCVV = cardCVV;
		this.cardName = cardName;
		this.cardExpiryDate = cardExpiryDate;
	}

	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getBillType() {
		return billType;
	}

	public void setBillType(String billType) {
		this.billType = billType;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getVendorName() {
		return vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	public String getBillStatus() {
		return billStatus;
	}

	public void setBillStatus(String billStatus) {
		this.billStatus = billStatus;
	}

	public String getPaymentThrough() {
		return paymentThrough;
	}

	public void setPaymentThrough(String paymentThrough) {
		this.paymentThrough = paymentThrough;
	}

	public String getCardCVV() {
		return cardCVV;
	}

	public void setCardCVV(String cardCVV) {
		this.cardCVV = cardCVV;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public String getCardExpiryDate() {
		return cardExpiryDate;
	}

	public void setCardExpiryDate(String cardExpiryDate) {
		this.cardExpiryDate = cardExpiryDate;
	}
	
	
}
