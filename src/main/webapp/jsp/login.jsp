<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <link href="/css/common.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>

    <body>
        <div class="container">
            <form method="POST" action="/login" class="form-signin">
                <h2 class="form-heading">Log in</h2>
                <div class="form-group">
                    <input name="username" type="text" class="form-control" placeholder="Username" autofocus="true" />
                    <input name="password" type="password" class="form-control" placeholder="Password" />
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>

                </div>

            </form>

        </div>
    </body>

    </html>