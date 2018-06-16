package com.bru.controller;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.bru.dao.AjaxDao;
import com.bru.dao.RepairDao;
import com.bru.model.TestAjaxBean;
import com.bru.model.TypeAppliances;
import com.bru.model.TypeProduct;

@RestController
public class AjaxController {

	@Autowired
	AjaxDao ajaxDao;
	
	@Autowired
	RepairDao repairDao;
	
	// Drop-down
	@RequestMapping(value = "/a")
	public List<TypeAppliances> aa() {
		List<TypeAppliances> list = new ArrayList<>();
		list = ajaxDao.sle1();
		return list;
	}
	// Drop-down
	@RequestMapping(value = "/b", method = RequestMethod.POST)
	public List<TypeProduct> bb(@RequestBody TestAjaxBean testAjexBean) {
		String v = "";
		v = testAjexBean.getZz();
		List<TypeProduct> list = new ArrayList<>();
		list = ajaxDao.sle2(v);

		return list;
	}
}
