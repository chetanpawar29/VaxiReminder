package com.chetan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chetan.dao.*;
import com.chetan.model.*;

@Controller
public class ChildController {

	@Autowired
	Vaccine vaccine;
	
	@Autowired
	VaccineDao vaccineDao;
	
	@Autowired
	VaccineLogs vaccineLog;
	
	@Autowired
	VaccineLogDao vaccineLogDao;
	
	@Autowired
	Child child;
	
	@Autowired
	ChildDao childDao;
	

	
	@RequestMapping("/OpenChildLogin")
	public String openChildLogin()
	{
		return "ChildLogin";
		
	}
	@RequestMapping(path="/ChildLogin",method=RequestMethod.POST)
	public String childLogin(HttpServletRequest request,Model model,HttpSession h2)
	{
		int id = Integer.parseInt(request.getParameter("cId"));
		
		String name = request.getParameter("childName");
		child = childDao.get(id);
		
		try{
		if((id==child.getcId()) && name.equals(child.getChildName()))
		{
			h2.setAttribute("sessionData", id);
			return "ChildHomePage";
		}
		else{
			String msg ="Enter correct ID and Name.";
			model.addAttribute("msg", msg);
			return "ChildLogin";
		}
		}catch(Exception e)
		{
			e.printStackTrace();	
		}
		return "ChildLogin";
	}
	@RequestMapping("/openChildHomePage")
	public String openChildHomePage(HttpSession h2)
	{
		int sessionData = (int) h2.getAttribute("sessionData");
		
		if(sessionData == 0)
		{
			return "ChildLogin";
		}
		return "ChildHomePage";
	}
	
	@RequestMapping("/logoutChild")
	public String logoutChild(HttpSession h2)
	{
		h2.invalidate();
		return "ChildLogin";
	}
	
	@RequestMapping(path="/ViewVaccines")
	public String viewVaccine(Model model)
	{
		List<Vaccine> vaccineList = vaccineDao.viewAll(vaccine);
		
		model.addAttribute("vaccineList",vaccineList);
		
		return "c_1_viewVaccines";
	}
	
	@RequestMapping("/viewOwnChildVaccinesLog")
	public String viewOwnChildVaccinesLog(Model model) {
	    int childId = child.getcId();
	   vaccineLog = vaccineLogDao.viewOwn(childId);
	    
	    if (vaccineLog != null) {
	    	 model.addAttribute("vaccineLog", vaccineLog);
	 	    return "c_3_viewOwnChildVaccinesLog";
	    }
	    
	  
	    return "ChildHomePage";
	}
	@RequestMapping("/viewUpcomingOwnChildVaccines")
	public String viewUpcomingOwnChildVaccines(Model model)
	{
		List<Vaccine> vaccineList = vaccineDao.viewAll(vaccine);
		model.addAttribute("vaccineList",vaccineList);
		
		int childId = child.getcId();
		child = childDao.get(childId);
		model.addAttribute(child);
		
		return "c_2_viewUpcomingOwnChildVaccines";
	}
	
	@RequestMapping("/OpenChangeContNo")
	public String openChangeContNo()
	{
		return "c_4_ChangeContactNo";
	}
	
	@RequestMapping(path="/ChangeContNo",method=RequestMethod.POST)
	public String changeContNo(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("cId"));
		String contactNo = request.getParameter("parentContact");
		child = childDao.get(id);
		
		if(id == child.getcId())
		{
			child.setParentContact(contactNo);
			childDao.update(child);
			return "ChildHomePage";
		}
		else{
			return "c_4_ChangeContactNo";
		}
		
	}
	
}
