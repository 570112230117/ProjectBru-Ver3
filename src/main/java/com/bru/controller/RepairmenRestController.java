package com.bru.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bru.dao.RepairmenDao;
import com.bru.model.RepairmenBean;
import com.bru.model.TesttabelBean;

@RestController
public class RepairmenRestController {

	@Autowired
	RepairmenDao repairmenDao;
	
	
	
	@RequestMapping(value = "/tabelrepairmen")
	public List<RepairmenBean> all() throws SQLException {
		List<RepairmenBean> list = new ArrayList<>();
		list = repairmenDao.findAll();
		return list;
	}
	
	@RequestMapping(value = "/testtabelrepairmen")
	public List<TesttabelBean> testall() throws SQLException {
		List<TesttabelBean> list = new ArrayList<>();
		list = repairmenDao.findAlltest();
		return list;
	}
	
	
}
