package com.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bru.dao.WarrantyDao;
import com.bru.model.TestBean;
import com.bru.model.WarrantyBean;
@RestController
public class WarrantyController {

	@Autowired
	private WarrantyDao warrantyDao;

	@RequestMapping(value = "/warranty", method = RequestMethod.POST)
	public WarrantyBean  warranty(@RequestBody TestBean  testBean ) {
		WarrantyBean bean = new WarrantyBean();
		bean = warrantyDao.warranty(testBean.getVvv());
		return bean;
	}
}
