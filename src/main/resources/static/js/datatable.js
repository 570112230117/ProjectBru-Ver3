$(document).ready(function () {
	var table = $('#employeesTable').DataTable({
		"sAjaxSource": "/all",
		"sAjaxDataProp": "",
		"order": [[0, "DESC"]],
		"aoColumns": [
			{ "mData": "repairDateStr" },
			{ "mData": "repairname" },
			{ "mData": "repairWarranty" },
			{ "mData": "repairProduct" },
			{ "mData": "repairWaste" },
			{ "mData": "repairAppointment" },
			{
				"mData": "fileName",
				"mRender": function (data, type, full) {// full คือ ข้อมูลของ
					// ตาราง
					//	var fileName = "C:\\photo\\"+full.fileName;
					//document.getElementById('img1').innerHTML = '<img src="' +fileName+'">';
					return '<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">' + 'OpenModal' + '</button>';
				}
			},
			{
				"mData": "",
				"mRender": function (data, type, full) {// full คือ ข้อมูลของ
					// ตาราง
					return '<a href=#>' + 'ผู้รับแจ้ง' + '</a>';
				}
			}, {
				"mData": "",
				"mRender": function (data, type, full) {// full คือ ข้อมูลของ
					// ตาราง
					return '<a href=#>' + 'ช่าง A' + '</a>';
				}
			}, {
				"mData": "",
				"mRender": function (data, type, full) {// full คือ ข้อมูลของ
					// ตาราง
					return '<a href=#>' + 'สถานะ' + '</a>';
				}
			},
			{
				"mData": "",
				"mRender": function (data, type, full) {// full คือ ข้อมูลของ
					// ตาราง

					return '<a href="/repairmen/' + full.repairId + '" ' + '<span class="glyphicon glyphicon-edit">เพิ่มเติม</span>' + '</a> <a href="/update/' + full.repairId + '" ' + '<span class="glyphicon glyphicon-edit">Update</span>' + '</a>';

				}
			},

		]
	})
});
