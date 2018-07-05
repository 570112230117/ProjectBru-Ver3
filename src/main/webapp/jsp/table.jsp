<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<jsp:include page="../layout/menu.jsp"></jsp:include>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Spring Boot</title>
		<script src="/js/datatabel.js"></script>

	</head>

	<body>
		<div class="container-fluid">
			<div class="box box-default">
				<div>
					<h3>รายการซ่อมเครื่องใช้ไฟฟ้า
						<a href="/">
							<span class="btn btn-default pull-right">
								<span class="glyphicon glyphicon-plus"></span>เพิ่มข้อมูล</span>
						</a>
					</h3>
					<br>
					<div>
						<a href="#">แจ้งซ่อม</a>
						<span class="label bg-blue">21</span>
						<a href="#">รอตรวจสอบ</a>
						<span class="label bg-yellow">0</span>
						<a href="#">ส่งซ่อม</a>
						<span class="label bg-aqua">0</span>
						<a href="#">นำกลับมาซ่อม</a>
						<span class="label bg-black">0</span>
						<a href="#">ซ่อมเสร็จแล้ว</a>
						<span class="label bg-green">0</span>
						<a href="#">ซ่อมไม่ได้</a>
						<span class="label bg-red">0</span>
					</div>
					<br>
					<div>
						<table id="employeesTable" class="table table-striped table-bordered" style="width:100%">

							<!-- Header Table -->
							<thead>
								<tr>
									<th>วันที่แจ้งซ่อม</th>
									<th>ชื่อลูกค้า</th>
									<th>การประกัน</th>
									<th>หมวดสินค้า</th>
									<th>อาการเสีย</th>
									<th>นัดวันซ่อม</th>
									<th>สาเหตุ / วิธีแก้ไข</th>
									<th>ผู้รับแจ้ง</th>
									<th>ช่างผู้รับผิดชอบ</th>
									<th>สถานะ</th>
									<th>รายละเอียด</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>วันที่แจ้งซ่อม</th>
									<th>ชื่อลูกค้า</th>
									<th>การประกัน</th>
									<th>หมวดสินค้า</th>
									<th>อาการเสีย</th>
									<th>นัดวันซ่อม</th>
									<th>สาเหตุ / วิธีแก้ไข</th>
									<th>ผู้รับแจ้ง</th>
									<th>ช่างผู้รับผิดชอบ</th>
									<th>สถานะ</th>
									<th>รายละเอียด</th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>

	</body>

	</html>