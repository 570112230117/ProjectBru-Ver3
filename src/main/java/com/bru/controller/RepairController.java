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

import com.bru.dao.RepairDao;
import com.bru.model.RepairBean;

@Controller
public class RepairController {

	@Autowired
	RepairDao repairDao;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String goHome(Model model) {
		return "repair";
	}

	@RequestMapping(path = "/part", method = RequestMethod.GET)
	public String gopart(Model model) {
		return "parts";
	}

	@RequestMapping(path = "/map", method = RequestMethod.GET)
	public String map(Model model) {
		return "map";
	}

	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
	}
	@RequestMapping(path = "/map1", method = RequestMethod.GET)
	public String map1(Model model) {
		return "testmap";
	}
	@RequestMapping(path = "/report", method = RequestMethod.GET)
	public String report(Model model) {
		return "report";
	}
	// insert
	@RequestMapping(value = { "/insertRepair" }, method = RequestMethod.POST, produces = "application/json")
	public Map<String, String> insertRepair(@RequestBody RepairBean repairBean) {
		try {
			repairDao.insert(repairBean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Map<String, String> repair = new HashMap<String, String>();
		return repair;
	}

	// update
	@RequestMapping(path = "/updateRepair", method = RequestMethod.GET)
	public String updateRepair(RepairBean repairBean) throws SQLException {
		repairDao.update(repairBean);
		return "update";
	}

	// update
	@RequestMapping(path = "/update/{values}", method = RequestMethod.GET)
	public String update(@PathVariable("values") String values, HttpServletRequest request, Model model)
			throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.findById(Integer.parseInt(values));
		request.setAttribute("repairBean", bean);
		return "update";
	}

	// table
	@RequestMapping(path = "/table", method = RequestMethod.GET)
	public String goHome(HttpServletRequest request) {
		request.removeAttribute("repairBean");
		return "table";
	}

	// repairmen
	@RequestMapping(path = "/repairmen/{values}", method = RequestMethod.GET)
	public String repairmen(@PathVariable("values") String values, HttpServletRequest request, Model model)
			throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.findById(Integer.parseInt(values));
		request.setAttribute("repairBean", bean);
		return "repairmen";
	}

}
