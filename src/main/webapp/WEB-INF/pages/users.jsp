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
<body>
    <h1 class="text-center"> Users list:</h1>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Active</th>
                <th>Login</th>
                <th>Name</th>
                <th>Role</th>
            </tr>
        </thead>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.active}</td>
                <td>${user.login}</td>
                <td>${user.name}</td>
                <td>${user.role}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>