package com.chetan.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.chetan.model.Child;
import com.chetan.model.Vaccine;
import com.chetan.model.VaccineLogs;

@Component
public class VaccineLogDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public int insert(VaccineLogs v) {
		int i = (int) this.hibernateTemplate.save(v);
		return i;
	}

	public VaccineLogs viewOwn(int childId) {
		VaccineLogs viewOwn = this.hibernateTemplate.get(VaccineLogs.class,childId);
		return viewOwn;
	}

	

	public List<VaccineLogs> viewAll(VaccineLogs vaccineLog) {
		List<VaccineLogs> viewAll = this.hibernateTemplate.loadAll(VaccineLogs.class);
		return viewAll;
	}
	
	
}
