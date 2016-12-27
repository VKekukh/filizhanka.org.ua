<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
        margin-top: 10%;
        width: 40%;
    }

    #profile_logo {
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
    }
</style>
<body>

<div class="container">

    <sec:authorize access="hasRole('ADMIN')">
        This content will only be visible to users who have
        the "supervisor" authority in their list of <tt>GrantedAuthority</tt>s.
    </sec:authorize>

    <c:url value="/update" var="url"/>

    <form action="${url}" method="POST">
        <div class="row">
            <div class="col-xs-4">
                <img id="profile_logo" src="/resources/images/admin_account.png" alt="admin_account"
                     style="height: 10%">
            </div>
            <div class="col-xs-8 form-group">
                <label for="login">Login</label>
                <input type="text" id="login" name="login" class="form-control" value="${login}">
                <label for="fio">FIO</label>
                <input type="text" id="fio" name="fio" class="form-control" value="${fio}">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control" value="${password}">
                <label for="email">Email</label>
                <input type="text" id="email" name="email" class="form-control" value="${email}">
                <label for="mobilephone">Mobilephone</label>
                <input type="text" id="mobilephone" name="mobilephone" class="form-control" value="${mobilephone}">
                <button type="submit" class="btn btn-default" style="margin-top: 5%; margin-left: 20%"><span class="glyphicon glyphicon-pencil"
                                                                    aria-hidden="true"></span> Edit
                </button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
