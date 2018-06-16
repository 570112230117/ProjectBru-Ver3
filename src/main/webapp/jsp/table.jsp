<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="../layout/menu.jsp"></jsp:include>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Boot</title>
<script src="/js/datatable.js"></script>
<!-- <script src="/js/xxx.js"></script> -->
</head>

<body>
	<div style="margin-top: 1cm; margin-left: 1cm; margin-right: 1cm;">
		<h3>รายการซ่อมเครื่องใช้ไฟฟ้า</h3>
		<br> <a href="/repairmen"> <span class="btn btn-success">เพิ่มข้อมูล</span>
		</a> <br> <br>
		<div>
			<a href="#">แจ้งซ่อม</a> <span class="badge">21</span> <a href="#">รอตรวจสอบ</a>
			<span class="badge">0</span> <a href="#">ส่งซ่อม</a> <span
				class="badge">0</span> <a href="#">ดำเนินการ</a> <span class="badge">0</span>
			<a href="#">นำกลับมาซ่อม</a> <span class="badge">0</span>
		</div>
		<br>
		<div>
			<table id="employeesTable" class="table table-bordered">

				<!-- Header Table -->
				<thead>
					<tr style="background: #787878;; color: white;">
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
			</table>
		</div>
	</div>
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-body">

				</div>
			</div>

		</div>
	</div>
</body>

</html>