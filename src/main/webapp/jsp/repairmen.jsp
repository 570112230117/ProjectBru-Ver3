<%@page import="com.bru.model.RepairBean"%>
	<%@page import="java.util.List"%>
		<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
			<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
			<jsp:include page="../layout/menu.jsp"></jsp:include>
			<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<title>Insert title here</title>
				<link href="/css/repair.css" rel="stylesheet">
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%
	RepairBean bean = null;
	bean = (RepairBean) request.getAttribute("repairBean");

%>
			</head>
			<body>
				<div class="container" style="margin-top: 1cm; margin-bottom: 5cm">

					<h3>
						<font style="vertical-align: inherit;">
							<font style="vertical-align: inherit;">
								ใบแจ้งซ่อม
							</font>
						</font>
						<small>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;"># <%=bean.getRepairId()%></font>
							</font>
						</small>
					</h3>
					<div class="col-xs-12">
						<h2 class="page-header">
						  <i class="fa fa-globe"></i>คุณ  <%=bean.getRepairname()%>
						  <small class="pull-right">วันที่แจ้งซ่อม: <%=bean.getRepairDateStr()%></small>
						</h2>
					  </div>
					<div class="row invoice-info">
						<div class="col-sm-4 invoice-col">
							<h4>
								<b>
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">
											จาก
										</font>
									</font>
								</b>
							</h4>
							<address>
								<strong>
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;"><%=bean.getRepairname()%></font>
									</font>
								</strong>
								<br>
								<font style="vertical-align: inherit;">
									<font style="vertical-align: inherit;">
										<%=bean.getRepairAddress()%> </font>
								</font>
								<br>
								<font style="vertical-align: inherit;">
									<font style="vertical-align: inherit;">
										โทรศัพท์: <%=bean.getRepairPhone()%> </font>
								</font>
								<br>
								<font style="vertical-align: inherit;">
									<font style="vertical-align: inherit;">
										อีเมล: <%=bean.getRepairEmail()%>
									</font>
								</font>
							</address>
						</div>
						<!-- /.col -->

						<div class="col-sm-4 invoice-col">
							<h4>
								<b>
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">ใบแจ้งซ่อม # <%=bean.getRepairId()%> </font>
									</font>
								</b>
							</h4>
							<b>
								<font style="vertical-align: inherit;">
									<font style="vertical-align: inherit;">Serial number:</font>
								</font>
							</b>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;"> <%=bean.getRepairSerialnumber()%> </font>
							</font>
							<br>
							<b>
								<font style="vertical-align: inherit;">
									<font style="vertical-align: inherit;">สถานะรับประกัน:</font>
								</font>
							</b>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;"> <%=bean.getRepairWarranty()%> </font>
							</font>
							<br>
							<b>
								<font style="vertical-align: inherit;">
									<font style="vertical-align: inherit;">หมดประกัน:</font>
								</font>
							</b>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;"> xx/xx/xxxx
								</font>
							</font>
						</div>
						<!-- /.col -->
						<div class="col-sm-4 invoice-col">
							<h4>
								<b>
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">
											ปัญหา
										</font>
									</font>
								</b>
							</h4>
							<address>
								<strong>
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">อาการเสีย </font>
									</font>
								</strong>
								<br>
								<font style="vertical-align: inherit;">
									<font style="vertical-align: inherit;">
										<%=bean.getRepairWaste()%> </font>
								</font>
								<br>

								<strong>
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">รายละเอียดเพิ่มเติม </font>
									</font>
								</strong>
								<br>
								<font style="vertical-align: inherit;">
									<font style="vertical-align: inherit;">
										<%=bean.getRepairDetail()%> </font>
								</font>
								<br>
							</address>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6">

							<div class="box box-primary">
								<div class="box-header">
									<h3 class="glyphicon glyphicon-calendar">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">เลือกวันที่ซ่อม</font>
										</font>
									</h3>
								</div>
								<div class="box-body">
									<div class="form-group">
										<label>
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">วันที่นัดซ่อม:</font>
											</font>
										</label>
										<input type="date" class="form-control">
									</div>
									<div class="form-group">
										<label>
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">ช่วงวันที่ซ่อม:</font>
											</font>
										</label>
										<input type="date" class="form-control">
									</div>
									<div class="form-group">
										<label>
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">ช่วงวันที่และเวลาซ่อม:</font>
											</font>
										</label>
										<input type="date" class="form-control">
									</div>
								</div>
							</div>
							<div class="box box-info">
								<div class="box-header">
									<h3 class="glyphicon glyphicon-user">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">หัวหน้าช่าง</font>
										</font>
									</h3>
								</div>
								<div class="box-body">
									<!-- Color Picker -->
									<div class="form-group">
										<label>
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">ชื่อหัวหน้าช่าง:</font>
											</font>
										</label>
										<input type="text" class="form-control my-colorpicker1 colorpicker-element" value="ช่าง A">
									</div>
									<div class="form-group">
										<label>
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">ช่างที่รับผิดชอบ</font>
											</font>
										</label>
										<select class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
											<option selected="selected">
												<font style="vertical-align: inherit;">
													<font style="vertical-align: inherit;">ช่าง B</font>
												</font>
											</option>
											<option>
												<font style="vertical-align: inherit;">
													<font style="vertical-align: inherit;">ช่าง C</font>
												</font>
											</option>
											<option disabled="disabled">
												<font style="vertical-align: inherit;">
													<font style="vertical-align: inherit;">ช่าง D (ปิดการใช้งาน)</font>
												</font>
											</option>
										</select>
									</div>
								</div>
								<!-- /.box-body -->
							</div>
						</div>
						<div class="col-md-6">
							<div class="box box-danger">
								<div class="box-header">
									<h3 class="glyphicon glyphicon-ok">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">ผลการแก้ไข </font>
										</font>
									</h3>
								</div>
								<div class="box-body">
									<!-- Date dd/mm/yyyy -->
									<div class="form-group">
										<label>
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">วันที่เสร็จ:</font>
											</font>
										</label>
										<input type="date" class="form-control my-colorpicker1 colorpicker-element" value="">
									</div>
									<!-- /.form group -->
									<div class="form-group">
										<label>
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">สาเหตุ / วิธีแก้:</font>
											</font>
										</label>
										<textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
									</div>
									<!-- /.form group -->
									<div class="form-group">
										<label>
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">ค่าใช้จ่าย:</font>
											</font>
										</label>
										<input type="text" class="form-control" value="0">
									</div>
									<!-- /.form group -->
									<div class="form-group">
										<label>
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">ไฟล์แนบ:</font>
											</font>
										</label>
										<input type="file" class="form-control-file" id="exampleFormControlFile1">
									</div>
									<!-- /.form group -->
									<div class="form-group">
										<label>
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">สถานะ:</font>
											</font>
										</label>
										<select class="form-control" id="exampleFormControlSelect1">
											<option>รอตรวจสอบ</option>
											<option>ส่งซ่อม</option>
											<option>ดำเนินการ</option>
											<option>นำกลับมาซ่อม</option>
											<option>สำเร็จ</option>
											<option>ยกเลิก</option>
										</select>
									</div>
								</div>
								<!-- /.box-body -->
							</div>
						</div>
					</div>
					<!-- <a href="#" target="_blank" class="btn btn-default">
						<i class="fa fa-print"></i>
						<font style="vertical-align: inherit;">
							<font style="vertical-align: inherit;"> พิมพ์</font>
						</font>
					</a> -->
					<div class="pull-right">
						<button type="submit" class="btn btn-primary">บันทึกการเปลี่ยนแปลง</button>
						<button type="button" class="btn btn-success">ยกเลิก</button>
					</div>
				</div>
			</body>
			<jsp:include page="../layout/footer.jsp"></jsp:include>

			</html>