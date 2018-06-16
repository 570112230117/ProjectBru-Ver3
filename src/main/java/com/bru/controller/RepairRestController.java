package com.bru.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.bru.dao.RepairDao;
import com.bru.model.RepairBean;

@RestController
public class RepairRestController {

	@Autowired
	RepairDao repairDao;
	
	@RequestMapping(value = "/all")
	public List<RepairBean> all() {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.findAll();
		return list;
	}
}
