<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <jsp:include page="../layout/menu.jsp"></jsp:include>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>

    </head>

    <body>
        <div class="container">
            <h1>เพิ่มช่างซ่อมในระบบ</h1>

            <div class="form-group">
                <button type="button" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> เพิ่มช่างซ่อม</button>
            </div>
            <div class="form-group">
                <table id="tabelrepairmen" class="display">

                    <!-- Header Table -->
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Active</th>
                        </tr>
                    </thead>
                    <!-- Footer Table -->
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Active</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </body>


    <script>
        $(document).ready(function () {
            var table = $('#tabelrepairmen').DataTable({
                "sAjaxSource": "/employees",
                "sAjaxDataProp": "",
                "order": [[0, "asc"]],
                "aoColumns": [
                    { "mData": "id" },
                    { "mData": "name" },
                    { "mData": "lastName" },
                    { "mData": "email" },
                    { "mData": "phone" },
                    { "mData": "active" },
                    
                ]
            })
        });
    </script>

    </html>