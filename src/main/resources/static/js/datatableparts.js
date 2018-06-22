$(document).ready(function () {
    var table = $('#parts').DataTable({
        "sAjaxSource": "/xxx",
        "sAjaxDataProp": "",
        "order": [[0, "asc"]],
        "aoColumns": [

            { "mData": "" },
            {
                "mData": "",
                "mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
                    return '<a href=#>' + 'aa' + '</a>';
                }
            },
            {
                "mData": "",
                "mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
                    return '<a href=#>' + 'bb' + '</a>';
                }
            },
            {
                "mData": "",
                "mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
                    return '<a href=#>' + 'cc' + '</a>';
                }
            },
            {
                "mData": "",
                "mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
                    return '<a href=#>' + 'dd' + '</a>';
                }
            },
            {
                "mData": "",
                "mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
                    return '<a href=#>' + 'gg' + '</a>';
                }
            },
            {
                "mData": "",
                "mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
                    return '<a href=#>' + 'xx' + '</a>';
                }
            },
            {
                "mData": "",
                "mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
                    return '<a href=#>' + 'xx' + '</a>';
                }
            },
            {
                "mData": "",
                "mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
                    return '<a href=#>' + 'xx' + '</a>';
                }
            },
            {
                "mData": "",
                "mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง

                    return '<a href="/">' + '<span class="glyphicon glyphicon-edit">เพิ่มเติม</span>' + '</a>';

                }
            },
        ]
    })
});