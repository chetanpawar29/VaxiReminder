package com.chetan.controller;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chetan.dao.ChildDao;
import com.chetan.dao.HospitalDao;
import com.chetan.dao.VaccineDao;
import com.chetan.dao.VaccineLogDao;
import com.chetan.model.Child;
import com.chetan.model.Hospital;
import com.chetan.model.Vaccine;
import com.chetan.model.VaccineLogs;

@Controller
public class HospitalController {

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
	
	@Autowired
	Hospital hospital;
	
	@Autowired
	HospitalDao hospitalDao;
	
	@RequestMapping("/")
	public String openIndexPage()
	{
		return "index";
	}
	
	@RequestMapping("/indexPage")
	public String indexPage()
	{
		return "index";
	}
	
//	admin login
	@RequestMapping("/HospitalAdminLogin")
	public String hospitalAdminLogin()
	{
		return "HospitalAdminLogin";
	}
	
	@RequestMapping(path="/loginAdmin",method=RequestMethod.POST)
	public String loginAdmin(HttpServletRequest request,Model model,HttpSession h1)
	{
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Hospital hospital = hospitalDao.get(email);
		
		try{
			if(email.equals(hospital.getEmail())&&password.equals(hospital.getPassword()))
			{
				h1.setAttribute("sessionData", email);
				return "HospitalHomePage";
			}
			else
			{
				String msg ="Enter correct emial and password.";
				model.addAttribute("msg", msg);
				return "HospitalAdminLogin";
			}
		}catch(Exception e)
		{
			e.printStackTrace();	
		}
		
		
		
		return "HospitalAdminLogin";
		
	}
	
	
	@RequestMapping("/openHospitalHomePage")
	public String openHospitalHomePage(HttpSession h1)
	{
		String sessionData = (String) h1.getAttribute("sessionData");
		
		if(sessionData == null)
		{
			return "HospitalAdminLogin";
		}
		
		return "HospitalHomePage";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession h1)
	{
		h1.invalidate();
		return "HospitalAdminLogin";
	}
//	add vaccine
	@RequestMapping("/openAddVaccine")
	public String openAddVaccine()
	{
		return "h_1_addVaccine";
	}
	@RequestMapping(path="/AddVaccine",method=RequestMethod.POST)
	public String addVaccine(@ModelAttribute Vaccine v,HttpServletRequest request)
	{
		int i = vaccineDao.insert(v);
		
		if(i>0)
		{
			return "HospitalHomePage";
		}
		else{
			return "AddVaccine";
		}
	}
	
//	add vaccine log
	
	@RequestMapping("/openAddChildVaccinesLogPage")
	public String openAddChildVaccinesLog()
	{
		return "h_8_AddChildVaccinesLog";
	}
	@RequestMapping(path="/AddVaccineLog",method=RequestMethod.POST)
	public String addVaccineLog(@ModelAttribute VaccineLogs v,HttpServletRequest request)
	{
		int i = vaccineLogDao.insert(v);
		
		if(i>0)
		{
			return "HospitalHomePage";
		}
		else{
			return "AddVaccineLog";
		}
	}
	
//	view vaccines
	
	@RequestMapping(path="/ViewVaccine")
	public String viewVaccine(Model model)
	{
		List<Vaccine> vaccineList = vaccineDao.viewAll(vaccine);
		
		model.addAttribute("vaccineList",vaccineList);
		
		return "h_2_viewVaccine";
	}
	
//	delete vaccine
	
	@RequestMapping(path="/deleteVaccine",method=RequestMethod.GET)
	public String deleteVaccine(HttpServletRequest request)
	{
		int vId = Integer.parseInt(request.getParameter("vId"));
		vaccineDao.delete(vId);
		return "redirect:/ViewVaccine";
	}
	
//	update vaccine price
	
	@RequestMapping("/openUpdateVaccinePrice")
	public String openUpdateVaccinePrice(Model model,HttpServletRequest request)
	{
		int vId = Integer.parseInt(request.getParameter("vId"));
		String vName = request.getParameter("VaccineName");
		model.addAttribute("vId", vId);
		model.addAttribute("vName", vName);
		return "h_3_updateVaccinePrice";
	}
	@RequestMapping(path="/updateVaccinePrice",method=RequestMethod.POST)
	public String updateVaccinePrice(HttpServletRequest request)
	{
		int vId = Integer.parseInt(request.getParameter("vId"));
		float newPrice = Float.parseFloat(request.getParameter("price"));
		
		if(newPrice>=0)
		{
			Vaccine vaccine =vaccineDao.get(vId);
			vaccine.setPrice(newPrice);
			vaccineDao.update(vaccine);
			return "redirect:/ViewVaccine";
		}
		else{
			return "h_3_updateVaccinePrice";
		}
		
	}
	
//	add child
	
	@RequestMapping("/openAddChildPage")
	public String openAddChildPage()
	{
		return "h_4_addChild";
	}
	@RequestMapping(path="/AddChild",method=RequestMethod.POST)
	public String addChild(@ModelAttribute Child c,HttpServletRequest request)
	{
		int i = childDao.insert(c);
		
		if(i>0)
		{
			return "HospitalHomePage";
		}
		else{
			return "h_4_addChild";
		}
	}
	
//	view child
	
	@RequestMapping("/viewChild")
	public String viewChild(Model model)
	{
		List<Child> childList = childDao.viewAll(child);
		model.addAttribute("childList", childList);
		return "h_5_viewChild";
	}
	
//	delete child
	@RequestMapping(path="/deleteChild",method=RequestMethod.GET)
	public String deleteChild(HttpServletRequest request)
	{
		int cId = Integer.parseInt(request.getParameter("cId"));
		childDao.delete(cId);
		return "redirect:/viewChild";
	}
	
//	View Upcoming All Child Vaccines
	@RequestMapping("/viewUpcomingAllChildVaccines")
	public String viewUpcomingAllChildVaccines(Model model)
	{
		List<Vaccine> vaccineList = vaccineDao.viewAll(vaccine);
		model.addAttribute("vaccineList",vaccineList);
		List<Child> childList = childDao.viewAll(child);
		model.addAttribute("childList", childList);
		List<VaccineLogs> vaccineLogsList = vaccineLogDao.viewAll(vaccineLog);
		model.addAttribute("vaccineLogsList", vaccineLogsList);
		
		return "h_6_viewUpcomingAllChildVaccines";
	}
	
	
//	change password
	
	@RequestMapping("/openChangePassPage")
	public String openChangePassPage()
	{
		return "h_7_changePassword";
	}
	@RequestMapping(path="/changePassPage",method=RequestMethod.POST)
	public String changePassPage(HttpServletRequest request)
	{
		String email = request.getParameter("email");
		String password= request.getParameter("password");
		String newPassword = request.getParameter("newPassword");
		hospital = hospitalDao.get(email);
		
		if(password.equals(hospital.getPassword()))
		{
			hospital.setPassword(newPassword);
			hospitalDao.update(hospital);
			return "HospitalHomePage";
		}
		else{
			return "h_7_changePassword";
		}
		
	}
	
}
