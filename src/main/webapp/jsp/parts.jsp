<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <jsp:include page="../layout/menu.jsp"></jsp:include>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <link href="/css/repair.css" rel="stylesheet">
        <script src="/js/datatableparts.js"></script>
    </head>

    <body>
        <div style="margin-top: 1cm; margin-left: 1cm; margin-right: 1cm; ">
            <h3>
                <div class="glyphicon glyphicon-list-alt">ทะเบียนอะไหล่
                </div>
            </h3>
            <br>
            <table id="parts" class="display">

                <!-- Header Table -->
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>หมวดหมู่อะไหล่</th>
                        <th>ชื่ออะไหล่</th>
                        <th>ยี่ห้ออะไหล่</th>
                        <th>ชื่อผู้เบิกอะไหล่</th>
                        <th>รูปภาพ</th>
                        <th>ชื่อลูกค้า</th>
                        <th>ราคาอะไหล่</th>
                        <th>ประวัติการซ่อม</th>
                        <th>รายละเอียด</th>
                    </tr>
                </thead>
                <!-- Footer Table -->
                <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>หมวดหมู่อุปกรณ์</th>
                        <th>ชื่ออะไหล่</th>
                        <th>ยี่ห้ออะไหล่</th>
                        <th>ชื่อผู้เบิกอะไหล่</th>
                        <th>รูปภาพ</th>
                        <th>ชื่อลูกค้า</th>
                        <th>ราคาอะไหล่</th>
                        <th>ประวัติการซ่อม</th>
                        <th>รายละเอียด</th>
                    </tr>
                </tfoot>
            </table>

        </div>
    </body>


    </html>