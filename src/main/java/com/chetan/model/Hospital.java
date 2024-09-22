package com.chetan.model;

import javax.persistence.*;

import org.springframework.stereotype.*;

@Entity
@Component
public class Hospital {

	@Id
	private String email;
	private String password;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public Hospital(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Hospital() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Hospital [email=" + email + ", password=" + password + "]";
	}
	
	
}
