package com.chetan.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.chetan.model.Child;
import com.chetan.model.Vaccine;

@Component
public class ChildDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

    @Transactional
	public int insert(Child c) {
		int i = (int) this.hibernateTemplate.save(c);
		return i;
	}
	public List<Child> viewAll(Child child) {

		List<Child> viewAll = this.hibernateTemplate.loadAll(Child.class);
		return viewAll;
	}
	
	@Transactional
	public void delete(int cId) {
		Child c = this.hibernateTemplate.get(Child.class, cId);
		this.hibernateTemplate.delete(c);
		
	}
	public Child get(int id) {
		Child child = this.hibernateTemplate.get(Child.class, id);
		return child;
	}
	@Transactional
	public void update(Child child) {
		this.hibernateTemplate.update(child);
		
	}

}
