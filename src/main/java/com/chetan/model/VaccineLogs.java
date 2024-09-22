package com.chetan.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

@Entity
@Component
public class VaccineLogs {

	
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int vlId;
	@Id
	private int childId;
	private String vaccineName;
	private String date;
	private int ageMonths;
	public int getVlId() {
		return vlId;
	}
	public void setVlId(int vlId) {
		this.vlId = vlId;
	}
	public int getChildId() {
		return childId;
	}
	public void setChildId(int childId) {
		this.childId = childId;
	}
	public String getVaccineName() {
		return vaccineName;
	}
	public void setVaccineName(String vaccineName) {
		this.vaccineName = vaccineName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getAgeMonths() {
		return ageMonths;
	}
	public void setAgeMonths(int ageMonths) {
		this.ageMonths = ageMonths;
	}
	public VaccineLogs(int vlId, int childId, String vaccineName, String date, int ageMonths) {
		super();
		this.vlId = vlId;
		this.childId = childId;
		this.vaccineName = vaccineName;
		this.date = date;
		this.ageMonths = ageMonths;
	}
	public VaccineLogs() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "VaccineLogs [vlId=" + vlId + ", childId=" + childId + ", vaccineName=" + vaccineName + ", date=" + date
				+ ", ageMonths=" + ageMonths + "]";
	}
	
	
}
