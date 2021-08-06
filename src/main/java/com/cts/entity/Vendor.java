package com.cts.entity;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="vendor_tab")
public class Vendor {
	

	@Id
	@NotNull
	@Column(name="vendorName",unique=true,length=50)
	String vendorName;
	
	@NotNull
	@Column(name="companyRegNo" ,unique=true ,length=50)
	String companyRegNo;
	
	@NotNull
	@Column(name="vendorType")
	String vendorType;
	
	@NotNull
	@Column(name="address")
	String address;
	
	@NotNull
	@Column(name="country")
	String country;
	
	@NotNull
	@Column(name="state")
	String state;
	
	@NotNull
	@Column(name="emailId",length=30)
	String emailId;

	@NotNull
	@Column(name="contactNo",length=10)
	long contactNo;
	
	
	
	@NotNull
	@Column(name="website",length=25)
	String website;
	
	@NotNull
	@Column(name="certificateIssueDate")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date certificateIssueDate;
	
	@NotNull
	@Column(name="certificateValidityDate")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date certificateValidityDate;
	
	@NotNull
	@Column(name="yearOfEstablishment")
	int yearOfEstablishment;
	
	@NotNull
	@Column(name="paymentGateway")
	String paymentGateway;

	
	@OneToMany(cascade=CascadeType.ALL,mappedBy="vendorName",fetch=FetchType.EAGER)
	private List<Bill> bills=new ArrayList<>();
	


	public Vendor() {
		super();
	}
	

	public Vendor(String vendorName, String companyRegNo, String vendorType, String address, String country,
			String state, String emailId, long contactNo, String website, Date certificateIssueDate,
			Date certificateValidityDate, int yearOfEstablishment, String paymentGateway) {
		super();
		this.vendorName = vendorName;
		this.companyRegNo = companyRegNo;
		this.vendorType = vendorType;
		this.address = address;
		this.country = country;
		this.state = state;
		this.emailId = emailId;
		this.contactNo = contactNo;
		this.website = website;
		this.certificateIssueDate = certificateIssueDate;
		this.certificateValidityDate = certificateValidityDate;
		this.yearOfEstablishment = yearOfEstablishment;
		this.paymentGateway = paymentGateway;
	}
	
	
	public Vendor(String vendorName, String companyRegNo, String vendorType, String address, String country,
			String state, String emailId, long contactNo, String website, Date certificateIssueDate,
			Date certificateValidityDate, int yearOfEstablishment, String paymentGateway, List<Bill> bills) {
		super();
		this.vendorName = vendorName;
		this.companyRegNo = companyRegNo;
		this.vendorType = vendorType;
		this.address = address;
		this.country = country;
		this.state = state;
		this.emailId = emailId;
		this.contactNo = contactNo;
		this.website = website;
		this.certificateIssueDate = certificateIssueDate;
		this.certificateValidityDate = certificateValidityDate;
		this.yearOfEstablishment = yearOfEstablishment;
		this.paymentGateway = paymentGateway;
		this.bills = bills;
	}


	public List<Bill> getBills() {
		return bills;
	}


	public void setBills(List<Bill> bills) {
		this.bills = bills;
	}




	public String getVendorName() {
		return vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	public String getCompanyRegNo() {
		return companyRegNo;
	}

	public void setCompanyRegNo(String companyRegNo) {
		this.companyRegNo = companyRegNo;
	}

	public String getVendorType() {
		return vendorType;
	}

	public void setVendorType(String vendorType) {
		this.vendorType = vendorType;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	
	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public Date getCertificateIssueDate() {
		return certificateIssueDate;
	}

	public void setCertificateIssueDate(Date certificateIssueDate) {
		this.certificateIssueDate = certificateIssueDate;
	}

	public Date getCertificateValidityDate() {
		return certificateValidityDate;
	}

	public void setCertificateValidityDate(Date certificateValidityDate) {
		this.certificateValidityDate = certificateValidityDate;
	}

	public int getYearOfEstablishment() {
		return yearOfEstablishment;
	}

	public void setYearOfEstablishment(int yearOfEstablishment) {
		this.yearOfEstablishment = yearOfEstablishment;
	}

	public String getPaymentGateway() {
		return paymentGateway;
	}

	public void setPaymentGateway(String paymentGateway) {
		this.paymentGateway = paymentGateway;
	}

	
	public long getContactNo() {
		return contactNo;
	}

	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}


	@Override
	public String toString() {
		return "Vendor [vendorName=" + vendorName + ", companyRegNo=" + companyRegNo + ", vendorType=" + vendorType
				+ ", address=" + address + ", country=" + country + ", state=" + state + ", emailId=" + emailId
				+ ", contactNo=" + contactNo + ", website=" + website + ", certificateIssueDate=" + certificateIssueDate
				+ ", certificateValidityDate=" + certificateValidityDate + ", yearOfEstablishment="
				+ yearOfEstablishment + ", paymentGateway=" + paymentGateway + "]";
	}

	
	
}
