package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.RepairmenBean;
import com.bru.model.StatusBean;
import com.bru.model.TesttabelBean;
import com.bru.util.ConnectDB;

@Repository
public class RepairmenDao {

	// list table
		public List<TesttabelBean> findAlltest() throws SQLException {
			List<TesttabelBean> list = new ArrayList<>();
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			Connection conn = con.openConnect();
			try {
				sql.append(" SELECT repair_date, repair_name , repair_waste, name FROM repair , repairmen ");
				prepared = con.openConnect().prepareStatement(sql.toString());
				ResultSet rs = prepared.executeQuery();

				while (rs.next()) {
					TesttabelBean bean = new TesttabelBean();
					bean.setRepairDate(rs.getString("repair_date"));
					bean.setRepairName(rs.getString("repair_name"));
					bean.setRepairWaste(rs.getString("repair_waste"));
					bean.setName(rs.getString("name"));
					list.add(bean);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				conn.close();
			}
			return list;
		}// end method list
		
	// list table
	public List<RepairmenBean> findAll() throws SQLException {
		List<RepairmenBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM repairmen ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				RepairmenBean bean = new RepairmenBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setAddress(rs.getString("address"));
				bean.setPhone(rs.getString("phone"));
				bean.setGender(rs.getString("gender"));
				bean.setBirthday(rs.getDate("birthday"));
				bean.setWork(rs.getDate("work"));
				bean.setEmail(rs.getString("email"));
				bean.setPassword(rs.getString("password"));
				bean.setStatus(status(rs.getString("status")));
				list.add(bean);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return list;
	}// end method list

	// findById
	public RepairmenBean findById(Integer id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairmenBean bean = new RepairmenBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM repairmen rp WHERE rp.id = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setInt(1, id);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setAddress(rs.getString("address"));
				bean.setPhone(rs.getString("phone"));
				bean.setGender(rs.getString("gender"));
				bean.setBirthday(rs.getDate("birthday"));
				bean.setWork(rs.getDate("work"));
				bean.setEmail(rs.getString("email"));
				bean.setPassword(rs.getString("password"));
				bean.setStatus(rs.getString("status"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			conn.close();
		}
		return bean;
	}// findById

	// insert_repairmen
	public void insert(RepairmenBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO repairmen (name, address, phone, gender, birthday, work, email, password, status) VALUES (?,?,?,?,?,?,?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getAddress());
			prepared.setString(3, bean.getPhone());
			prepared.setString(4, bean.getGender());
			prepared.setDate(5, bean.getBirthday());
			prepared.setDate(6, bean.getWork());
			prepared.setString(7, bean.getEmail());
			prepared.setString(8, bean.getPassword());
			prepared.setString(9, bean.getStatus());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}// end method insert

	// update
	public void update(RepairmenBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" UPDATE repairmen SET  name = ? , address = ?, phone = ?, gender = ?, birthday = ?, email = ?, password = ? , status = ?   WHERE id = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getAddress());
			prepared.setString(3, bean.getPhone());
			prepared.setString(4, bean.getGender());
			prepared.setDate(5, bean.getBirthday());
			prepared.setString(6, bean.getEmail());
			prepared.setString(7, bean.getPassword());
			prepared.setString(8, bean.getStatus());
			prepared.setInt(9, bean.getId());
			prepared.executeUpdate();			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}// end method update

	// status
	String status(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		List<StatusBean> list = new ArrayList<>();	
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM status_repairmen rp where rp.id = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				StatusBean bean = new StatusBean();
				bean.setName(rs.getString("name"));
				list.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return list.get(0).getName();
	}// status

}
