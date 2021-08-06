package com.cts.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="user_table")
public class User {

	


	@Id
	@Column(name="username",length=15)
	@NotNull
	String username;
	
	@Column(name="firstName",length=50)
	@NotNull
	String firstName;
	
	@Column(name="lastName",length=50)
	@NotNull
	String lastName;
	
	
	@Column(name="age",length=2)
	@NotNull
	int age;
	
	@Column(name="gender",length=6)
	@NotNull
	String gender;
	
	@Column(name="contactNo",length=10)
	long contactNo;
	

	@Column(name="pan",unique=true,length=15)
	@NotNull
	String pan;
	

	@Column(name="aadhar",unique=true,length=15)
	@NotNull
	String aadhar;
	
	@Column(name="emailId",unique=true,length=30)
	@NotNull
	String emailId;
	
	@Column(name="password",length=100)
	@NotNull
	String password;
	
	@Column(name="enabled",nullable=false)
     boolean enabled=true;
	
	@OneToMany(fetch=FetchType.LAZY ,mappedBy="user")
	Set<UserRole>  userRole= new HashSet<UserRole>();
	
	@OneToMany(cascade=CascadeType.ALL,mappedBy="username",fetch=FetchType.EAGER)
	private List<Bill> bills=new ArrayList<>();

	
	public User() {
		super();
	}

	public User(String username, String firstName, String lastName, int age, String gender, long contactNo, String pan,
			String aadhar, String emailId, String password, boolean enabled, Set<UserRole> userRole) {
		super();
		this.username = username;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.gender = gender;
		this.contactNo = contactNo;
		this.pan = pan;
		this.aadhar = aadhar;
		this.emailId = emailId;
		this.password = password;
		this.enabled = enabled;
		this.userRole = userRole;
	}

	public User(String firstName, String lastName, int age, String gender, long contactNo, String pan, String aadhar,
			String emailId, String password, boolean enabled, Set<UserRole> userRole) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.gender = gender;
		this.contactNo = contactNo;
		this.pan = pan;
		this.aadhar = aadhar;
		this.emailId = emailId;
		this.password = password;
		this.enabled = enabled;
		this.userRole = userRole;
	}
	
	public User(String username, String password, boolean enabled) {
		super();
		this.username = username;
		this.password = password;
		this.enabled = enabled;
	}

	public User(String username, String password, boolean enabled, Set<UserRole> userRole) {
		super();
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.userRole = userRole;
	}
	
	
	public User(String username, String firstName, String lastName, int age, String gender, long contactNo, String pan,
			String aadhar, String emailId, String password, boolean enabled, Set<UserRole> userRole, List<Bill> bills) {
		super();
		this.username = username;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.gender = gender;
		this.contactNo = contactNo;
		this.pan = pan;
		this.aadhar = aadhar;
		this.emailId = emailId;
		this.password = password;
		this.enabled = enabled;
		this.userRole = userRole;
		this.bills = bills;
	}

	public List<Bill> getBills() {
		return bills;
	}

	public void setBills(List<Bill> bills) {
		this.bills = bills;
	}
	
	
	

	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}



	public long getContactNo() {
		return contactNo;
	}



	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}



	public String getEmailId() {
		return emailId;
	}



	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	

	public String getPan() {
		return pan;
	}


	public void setPan(String pan) {
		this.pan = pan;
	}


	public String getAadhar() {
		return aadhar;
	}


	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}


	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Set<UserRole> getUserRole() {
		return userRole;
	}
	public void setUserRole(Set<UserRole> userRole) {
		this.userRole = userRole;
	}
	

	@Override
	public String toString() {
		return "User [username=" + username + ", firstName=" + firstName + ", lastName=" + lastName + ", age=" + age
				+ ", gender=" + gender + ", contactNo=" + contactNo + ", pan=" + pan + ", aadhar=" + aadhar
				+ ", emailId=" + emailId + ", password=" + password + ", enabled=" + enabled + ", userRole=" + userRole
				+ ", bills=" + bills + "]";
	}


	
}
