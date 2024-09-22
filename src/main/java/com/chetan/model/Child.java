package com.chetan.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Child {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private  int cId;
	private String childName;
	private String parentName;
	private String dob;
	private String parentContact;
	private String address;
	public  int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getChildName() {
		return childName;
	}
	public void setChildName(String childName) {
		this.childName = childName;
	}
	public String getParentName() {
		return parentName;
	}
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getParentContact() {
		return parentContact;
	}
	public void setParentContact(String parentContact) {
		this.parentContact = parentContact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Child() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Child(int cId, String childName, String parentName, String dob, String parentContact, String address) {
		super();
		this.cId = cId;
		this.childName = childName;
		this.parentName = parentName;
		this.dob = dob;
		this.parentContact = parentContact;
		this.address = address;
	}
	@Override
	public String toString() {
		return "Child [cId=" + cId + ", childName=" + childName + ", parentName=" + parentName + ", dob=" + dob
				+ ", parentContact=" + parentContact + ", address=" + address + "]";
	}
	
	
}
