<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    #profile_logo {
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
    }

    .notShow {
        display: none;
    }

    .show {
        display: inherit;
    }
</style>
<body>

<div class="container">

    <c:set var="editable" value="false"></c:set>
    <c:set var="show" value="notShow"></c:set>

    <sec:authorize access="hasRole('ADMIN')">
        <c:set var="show" value="show"></c:set>
        <c:url var="icon" value="/resources/images/admin_account.png"></c:url>
    </sec:authorize>
    <sec:authorize access="hasRole('OPERATOR')">
        <c:set var="show" value="show"></c:set>
        <c:url var="icon" value="/resources/images/user_expert.png"></c:url>
    </sec:authorize>

    <c:if test="${param.btnEdit eq null}">
        <c:set var="editable" value="true"></c:set>
        <c:set var="btnName" value=" Edit"></c:set>
        <c:url value="/editProfile" var="url"/>
    </c:if>
    <c:if test="${param.btnEdit ne null}">
        <c:set var="btnName" value=" Save"></c:set>
        <c:url value="/saveProfile" var="url"/>
    </c:if>
    <c:if test="${active}">
        <c:set var="check" value="checked"></c:set>
    </c:if>

    <h3 class="text-center" style="margin-top: 10%">On this page you can edit your profile</h3>
    <div class="col-xs-3"></div>


    <div class="col-xs-6">
    <form:form action="${url}" method="POST" commandName="customUser">
        <div class="row">
            <div class="col-xs-3">
                <img id="profile_logo" src="${icon}" alt="admin_account"
                     style="height: 10%">
            </div>
            <div class="col-xs-9 form-group">
                <label for="id" class="${show}">id</label>
                <form:input type="text" class="form-control ${show}" path="id" readonly="true"/>

                <label for="role" class="${show}">Role</label>
                <form:input type="text" class="form-control ${show}" path="role" readonly="${editable}"/>

                <label for="login">Login</label>
                <form:input type="text" class="form-control" path="login" readonly="true"/>

                <label for="name">FIO</label>
                <form:input readonly="${editable}" type="text" class="form-control" path="name"/>

                <label for="password">Password</label>
                <form:input readonly="${editable}" type="password" class="form-control"
                            path="password"/>

                <label for="email">Email</label>
                <form:input readonly="${editable}" type="text" class="form-control" path="email"/>

                <label for="mobilephone">Mobilephone</label>
                <form:input readonly="${editable}" type="text" class="form-control"
                            path="mobilephone"/>

                <label class="checkbox-inline ${show}"><form:checkbox path="active" class="${show}"/> Active </label>

                <button type="submit" class="btn btn-default" style="margin-top: 5%; margin-left: 20%"><span
                        class="glyphicon glyphicon-pencil"
                        aria-hidden="true"></span>${btnName}
                </button>
            </div>
        </div>
        <a href="/" class="right">Home</a>
    </form:form>
    </div>
</div>
</body>
</html>
