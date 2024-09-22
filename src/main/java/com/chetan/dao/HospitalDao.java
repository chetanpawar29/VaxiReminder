package com.chetan.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.chetan.model.Hospital;

@Component
public class HospitalDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public Hospital get(String email) {
		Hospital hospital = this.hibernateTemplate.get(Hospital.class, email);
		return hospital;
	}
	
	@Transactional
	public void update(Hospital hospital) {
		this.hibernateTemplate.update(hospital);
	}

	
	
}
