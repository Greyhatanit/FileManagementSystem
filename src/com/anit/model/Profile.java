package com.anit.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "profile")
public class Profile {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "account_no")
	private int account_no;
	@Column(name = "firstname")
	private String firstname;
	@Column(name = "middlename")
	private String middlename;
	@Column(name = "lastname")
	private String lastname;
	@Column(name = "age")
	private int age;
	@Column(name = "phoneno")
	private int phone;
	@Column(name = "email")
	private String email;
	@Column(name = "photo")
	private String photo;
	@Column(name = "datehired")
	private String datehired;
	@Column(name = "attendance")
	private int attendance;
	@Column(name = "address")
	private String address;

	public int getAccount_no() {
		return account_no;
	}

	public void setAccount_no(int account_no) {
		this.account_no = account_no;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getDatehired() {
		return datehired;
	}

	public void setDatehired(String date_Hired) {
		this.datehired = date_Hired;
	}

	public int getAttendance() {
		return attendance;
	}

	public void setAttendance(int attendance) {
		this.attendance = attendance;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
