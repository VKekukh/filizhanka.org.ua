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
</style>
<body>

<div class="container">
    <a class="right" href="/logout"><h3>Logout</h3></a>

    <div style="text-align: center; margin-top: 25%">
        <h1> Success Page!</h1>

        <h3>
            <div class="text-capitalize"> ${customUser.login},</div>
            this page is being used for testing
        </h3>

        <sec:authorize access="hasRole('ADMIN')">
            This content will only be visible to users who have
            the "supervisor" authority in their list of <tt>GrantedAuthority</tt>s.
        </sec:authorize>

        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-2">
                <a href="/profile">Your profile</a>
            </div>
            <div class="col-xs-2">
                <a href="/users">List of Users</a>
            </div>
            <div class="col-xs-2">
                <a href="/redirect">Test redirect</a>
            </div>
            <div class="col-xs-2"></div>
            <div class="col-xs-2"></div>
        </div>
    </div>

</div>
</body>
</html>
