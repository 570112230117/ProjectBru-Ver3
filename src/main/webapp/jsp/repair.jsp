<%@page import="com.bru.model.WarrantyBean"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<%@ page import="java.io.*,java.util.*"%>
			<%@ page import="javax.servlet.*,java.text.*"%>
				<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
				<jsp:include page="../layout/menu.jsp"></jsp:include>
				<html>

				<head>
					<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
					<title>Welcome to Repair</title>
					<link href="/css/repair.css" rel="stylesheet">
					<script src="/js/repair.js"></script>
					<script src="/js/dropdown.js"></script>
					<script src="/js/warranty.js"></script>
					<%
	WarrantyBean bean = null;
	bean = (WarrantyBean) request.getAttribute("a");
%>
				</head>

				<body>
					<div class="container" style="margin-top: 1cm; margin-bottom: 2cm">
						<h3 align="center">แจ้งซ่อมเครื่องใช้ไฟฟ้า</h3>
						<br>
						<div class="row">
							<div class="col-md-6">
								<div class="box box-primary">
									<div class="box-header with-border">
										<h3 class="box-title">ข้อมูลลูกค้า</h3>
									</div>
									<div class="form-group">
										<label for="exampleFormControlInput1">วันที่แจ้งซ่อม</label>
										<input type="text" id="repairDate" class="form-control" disabled value="<%Date dNow = new Date();
										SimpleDateFormat ft = new SimpleDateFormat(" dd-MM-yyyy HH:mm:ss ");
										out.print(ft.format(dNow));%>" name="repairDate">
									</div>
									<div class="form-group">
										<label for="exampleFormControlInput1">ชื่อลูกค้า
											<span style="color: red;">*</span>
										</label>
										<input type="text" name="name" class="form-control" id="name" placeholder="ชื่อลูกค้า">
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">ที่อยู่
											<span style="color: red;">*</span>
											<a href="/map" type="button" class="btn btn-info btn-xs">GPS</a>
											<small class="text-primary">** มาร์คพิกัด เพื่อความสะดวกในการหาที่อยู่</small>
										</label>
										<textarea class="form-control" id="address" rows="3" name="address"></textarea>
									</div>
									<div class="form-group">
										<label for="exampleFormControlInput1">เบอร์โทรศัพท์
											<span style="color: red;">*</span>
										</label>
										<input type="email" name="phone" class="form-control" id="phone" placeholder="เบอร์โทรศัพท์">
									</div>
									<div class="form-group">
										<label for="exampleFormControlInput1">อีเมล</label>
										<input name="email" type="email" class="form-control" id="email" placeholder="อีเมล">
									</div>
								</div>
								<div class="box box-danger">
									<div class="box-header with-border">
										<h3 class="box-title">ตรวจสอบอายุประกัน</h3>
									</div>
									<div class="box-body">
										<div class="row">
											<div class="form-group">
												<label for="exampleFormControlInput1">Serial number
													<span style="color: red;">*</span>
												</label>
												<input name="serialnumber" type="text" class="form-control" id="serialnumber" placeholder="กรอกข้อมูลผลิตภัณฑ์">
											</div>
											<div class="form-group" style="text-align: center">
												<button type="button" class="btn btn-warning btn-xs" onclick="check()">ตรวจสอบอายุประกัน</button>
											</div>
											<div class="form-group" id="alert">
											</div>
											<div class="form-group" id="purchase">
											</div>
											<div class="form-group" id="productcode">
											</div>
											<div class="form-group" id="productname">
											</div>
											<div class="form-group" id="serial">
											</div>
											<div class="form-group" id="warranty">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="box box-success">
									<div class="box-header with-border">
										<h3 class="box-title">ข้อมูลสินค้า</h3>
									</div>
									<div class="form-group">
										<label for="exampleFormControlSelect1">หมวดสินค้า</label>
										<select class="form-control" name="appliances" id="appliances">
											<option value="">== กรุณาเลือก ==</option>
										</select>
									</div>
									<div class="form-group">
										<label for="exampleFormControlSelect1">ประเภทสินค้า</label>
										<select class="form-control" name="product" id="product">
											<option value="">== กรุณาเลือก ==</option>
										</select>
									</div>
									<div class="form-group">
										<label for="exampleFormControlSelect1">ยี่ห้อ</label>
										<select class="form-control" name="brand" id="brand">
											<option value="">== กรุณาเลือก ==</option>
										</select>
									</div>
								</div>
								<div class="box box-info">
									<div class="box-header with-border">
										<h3 class="box-title">ปัญหา</h3>
									</div>
									<div class="box-body">
										<div class="form-group">
											<label for="exampleFormControlTextarea1">อาการเสีย
												<span style="color: red;">*</span>
											</label>
											<textarea class="form-control" id="Waste" rows="3" name="waste"></textarea>
										</div>
										<div class="form-group">
											<label for="exampleFormControlTextarea1">รายละเอียดเพิ่มเติม</label>
											<textarea class="form-control" id="detail" rows="3" name="detail"></textarea>
										</div>
										<div class="form-group">
											<label for="exampleFormControlFile1">ไฟล์แนบ</label>
											<input type="file" class="form-control-file" id="fileName" onclick="fileNameSet()">
										</div>
										<div class="form-group">
											<small class="text-primary">** รองรับเฉพาะ ไฟล์ภาพ jpg,jpeg,png หรือ ไฟล์เอกสาร word excel Pdf เท่านั้น</small>
										</div>
									</div>
								</div>
								<div class="box box-warning">
									<div class="box-header with-border">
										<h3 class="box-title">นัดวันซ่อม</h3>
									</div>
									<div class="box-body">
										<div class="form-group">
											<label for="exampleFormControlInput1">วันซ่อม
												<span style="color: red;">*</span>
											</label>
											<input type="date" name="appointment" class="form-control" id="appointment" placeholder="">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="pull-right">
							<button type="submit" class="btn btn-success" onclick="insertConfirm()">ยืนยัน</button>
							<button type="button" class="btn btn-secondary">ยกเลิก</button>
						</div>
					</div>
				</body>
				<jsp:include page="../layout/footer.jsp"></jsp:include>

				</html>