package com.chetan.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import java.util.List;
import com.chetan.model.Vaccine;

@Component
public class VaccineDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public int insert(Vaccine v) {
		int i = (int) this.hibernateTemplate.save(v);
		return i;
	}

	public List<Vaccine> viewAll(Vaccine vaccine) {
		
		List<Vaccine> viewAll = this.hibernateTemplate.loadAll(Vaccine.class);
		return viewAll;
	}

	@Transactional
	public void delete(int vId) {
		Vaccine v = this.hibernateTemplate.get(Vaccine.class, vId);
		this.hibernateTemplate.delete(v);
		
	}

	public Vaccine get(int vId) {
		Vaccine vaccine = this.hibernateTemplate.get(Vaccine.class, vId);
		return vaccine;
	}

	@Transactional
	public void update(Vaccine vaccine) {
		this.hibernateTemplate.update(vaccine);
	}
	
	
}
