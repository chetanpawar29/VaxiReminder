package com.chetan.model;

import javax.persistence.*;

import org.springframework.stereotype.*;

@Entity
@Component
public class Vaccine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int vId;
	private String vaccineName;
	private String vaccineDetails;
	private float price;
	private int months;
	public int getvId() {
		return vId;
	}
	public void setvId(int vId) {
		this.vId = vId;
	}
	public String getVaccineName() {
		return vaccineName;
	}
	public void setVaccineName(String vaccineName) {
		this.vaccineName = vaccineName;
	}
	public String getVaccineDetails() {
		return vaccineDetails;
	}
	public void setVaccineDetails(String vaccineDetails) {
		this.vaccineDetails = vaccineDetails;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getMonths() {
		return months;
	}
	public void setMonths(int months) {
		this.months = months;
	}
	public Vaccine() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Vaccine(int vId, String vaccineName, String vaccineDetails, float price, int months) {
		super();
		this.vId = vId;
		this.vaccineName = vaccineName;
		this.vaccineDetails = vaccineDetails;
		this.price = price;
		this.months = months;
	}
	@Override
	public String toString() {
		return "Vaccine [vId=" + vId + ", vaccineName=" + vaccineName + ", vaccineDetails=" + vaccineDetails
				+ ", price=" + price + ", months=" + months + "]";
	}
	
	
}
