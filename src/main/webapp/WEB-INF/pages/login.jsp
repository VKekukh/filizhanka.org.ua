<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
    <title>Кав'ярня Філіжанка</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    .right {
        text-align: right;
        float: right;
    }

    form {

        padding: 25px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    }
</style>
<body>
<div class="container">

    <h1 class="text-center" style="margin-top: 10%; margin-bottom: 10%">Welcome to Filizhanka</h1>
    <div class="col-xs-4"></div>
    <div class="col-xs-4">
        <form action="/login_check" method="post">
            <div class="form-group input-group col-xs-12">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <input name="login" type="login" class="form-control" placeholder="Login">
            </div>

            <div class="form-group input-group col-xs-12">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <input id="password" type="password" class="form-control" name="password" placeholder="Password">
            </div>

            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-ok-circle"
                                                                aria-hidden="true"></span> Sign In
            </button>
            <a href="/success" class="right">Registration</a>
        </form>
        <div class="col-xs-4"></div>
    </div>
</div>
</body>
</html>
