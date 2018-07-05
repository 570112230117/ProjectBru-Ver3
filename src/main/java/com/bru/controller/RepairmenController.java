package com.bru.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bru.dao.RepairmenDao;
import com.bru.model.RepairmenBean;

@Controller
public class RepairmenController {

	@Autowired
	RepairmenDao repairmenDao;
	
	@RequestMapping(path = "/repairmen1", method = RequestMethod.GET)
	public String repairmen(Model model) {		 
		return "insertrepairmen";
	}

	@RequestMapping(path = "/addrepairmen", method = RequestMethod.GET)
	public String add(HttpServletRequest request, Model model) {
		request.removeAttribute("repairmenBean");
		return "addrepairmen";
	}

	@RequestMapping(path = "/add", method = RequestMethod.GET)
	public String addrepairmen(Model model) {
		return "tabelrepairmen";
	}

	// insert
	@RequestMapping(value = { "/insertrepairmen" }, method = RequestMethod.POST, produces = "application/json")
	public Map<String, String> insertrepairmen(@RequestBody RepairmenBean repairmenBean) throws SQLException {
		repairmenDao.insert(repairmenBean);
		Map<String, String> tabelrepairmen = new HashMap<String, String>();
		return tabelrepairmen;
	}

	@RequestMapping(path = "/updaterepairmen/{values}", method = RequestMethod.GET)
	public String updaterepairmen(@PathVariable("values") String values, HttpServletRequest request, Model model) throws SQLException {
		RepairmenBean bean = new RepairmenBean();
		bean = repairmenDao.findById(Integer.parseInt(values));
		request.setAttribute("repairmenBean", bean);
		return "addrepairmen";
	}
	
	@RequestMapping(path = "/updaterepairmen1", method = RequestMethod.POST)
	public String updaterepairmen1 (RepairmenBean repairmenbean) throws SQLException {
		repairmenDao.update(repairmenbean);		
		return "tabelrepairmen";
	}
}
