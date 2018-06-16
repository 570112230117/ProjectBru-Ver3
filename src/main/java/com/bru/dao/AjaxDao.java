package com.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.bru.model.TypeAppliances;
import com.bru.model.TypeProduct;
import com.bru.util.ConnectDB;

@Repository
public class AjaxDao {
	// ดรอบดาว
		public List<TypeAppliances> sle1() {
			List<TypeAppliances> list = new ArrayList<>();
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			TypeAppliances beAppliances = new TypeAppliances();
			try {
				sql.append(" SELECT * FROM type_appliances ");
				prepared = con.openConnect().prepareStatement(sql.toString());
				ResultSet rs = prepared.executeQuery();
				while (rs.next()) {
					beAppliances = new TypeAppliances();
					beAppliances.setTypeName(rs.getString("type_name"));
					beAppliances.setId(rs.getInt("id"));
					list.add(beAppliances);
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			return list;
		}

		public List<TypeProduct> sle2(String A) {
			List<TypeProduct> list = new ArrayList<>();
			TypeProduct bean = new TypeProduct();
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			try {
				sql.append(" SELECT * FROM type_product WHERE type_id = ? ");
				prepared = con.openConnect().prepareStatement(sql.toString());
				prepared.setString(1, A);
				ResultSet rs = prepared.executeQuery();
				while (rs.next()) {
					bean = new TypeProduct();
					bean.setProduct(rs.getString("product"));
					bean.setId(rs.getInt("id"));
					list.add(bean);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			return list;
		}
}
