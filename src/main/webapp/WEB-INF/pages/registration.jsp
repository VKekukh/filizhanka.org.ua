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
    form {
        padding: 25px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        margin-top: 10%;
        width: 40%;
    }

    .input-group-addon {
        min-width: 120px;
    }
</style>
<body>
<div align="center">
    <c:url value="/registrationUser" var="regUrl" />

    <form action="${regUrl}" method="POST">

        <div class="form-group input-group col-xs-12 required">
            <span class="input-group-addon">Login</span>
            <input name="login" type="login" class="form-control" placeholder="Login">
        </div>

        <div class="form-group input-group col-xs-12">
            <span class="input-group-addon">Password</span>
            <input id="password" type="password" class="form-control" name="password" placeholder="Password">
        </div>

        <div class="form-group input-group col-xs-12">
            <span class="input-group-addon">FIO</span>
            <input id="fio" type="text" class="form-control" name="fio" placeholder="FIO">
        </div>

        <div class="form-group input-group col-xs-12">
            <span class="input-group-addon">Email</span>
            <input id="email" type="text" class="form-control" name="email" placeholder="Email">
        </div>

        <div class="form-group input-group col-xs-12">
            <span class="input-group-addon">Mobilephone</span>
            <input id="mobilephone" type="text" class="form-control" name="mobilephone" placeholder="Mobilephone">
        </div>
        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-ok"
                                                            aria-hidden="true"></span> Register
        </button>

        <c:if test="${emptyLoginOrPassword ne null}">
            <p class="bg-danger">Login and password can not be empty!</p>
        </c:if>
    </form>
</div>
</body>
</html>