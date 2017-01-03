<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
    <title>Кав'ярня Філіжанка</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>


        td, th {
            text-align: center;
        }

        form {
            padding: 25px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        input, select {
            border: none;
            border-bottom: 1px solid rosybrown;
            border-radius: 5px;
            margin: 1px;
            text-align: center;
        }

    </style>
</head>
<body>
<h3 class="text-center" style="margin-top: 2%"> Users list:</h3>
<div class="col-xs-1"></div>
<div class="col-xs-10">
    <form:form action="saveUsers" method="post" commandName="users">
        <table class="table">
            <thead>
            <tr>
                <th>Id</th>
                <th>Login</th>
                <th>Password</th>
                <th>Name</th>
                <th>Mobilephone</th>
                <th>Email</th>
                <th>Role</th>
                <th>Active</th>
                <th>Delete</th>
            </tr>
            </thead>
            <c:forEach items="${users.users}" var="user" varStatus="status">
                <tr>
                    <td style="width: 7%"><form:input  path="users[${status.index}].id" readonly="true" style="width: 100%"/></td>
                    <td><form:input path="users[${status.index}].login"/></td>
                    <td><form:input path="users[${status.index}].password" type="password"/></td>
                    <td><form:input path="users[${status.index}].name"/></td>
                    <td><form:input path="users[${status.index}].mobilephone"/></td>
                    <td><form:input path="users[${status.index}].email"/></td>
                    <td><form:select path="users[${status.index}].role">
                        <form:option value="ADMIN">Admin</form:option>
                        <form:option value="OPERATOR">Operator</form:option>
                    </form:select></td>
                    <td><form:checkbox path="users[${status.index}].active"/></td>
                    <td><form:button name="action" value="delete"><span
                            class="glyphicon glyphicon-minus"
                            aria-hidden="true"></span></form:button></td>
                </tr>
            </c:forEach>
        </table>
        <input type="submit" name="action" value="Save"/>
    </form:form>
</div>
</body>
</html>