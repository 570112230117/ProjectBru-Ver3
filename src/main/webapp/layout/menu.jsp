
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<jsp:include page="../commons/head.jsp"></jsp:include>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">Logo</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/">แจ้งซ่อมเครื่องใช้ไฟฟ้า</a></li>
				<li><a href="/table">รายการซ่อมเครื่องใช้ไฟฟ้า</a></li>
				<li><a href="/part">ทะเบียนอะไหล่</a></li>
				<li><a href="/add">เพิ่มช่างซ่อมในระบบ</a></li>
				<li><a href="/login"><span class="glyphicon glyphicon-log-in"></span>
						เข้าสู่ระบบ</a></li>
			</ul>
		</div>
	</div>
	</nav>