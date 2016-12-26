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
    .header_bg {
        background-image: url("/resources/images/backgroundHeader.jpg");
        height: 100%;
    }

    .side_bg {
        background-image: url("/resources/images/backgroundSide.jpg");
        height: 100%;
    }

    .bodyTop {
        background-image: url("/resources/images/bodyTop.jpg");
        height: 100%;
    }

    .bodyBotton {
        background-image: url("/resources/images/body.jpg");
        height: 100%;
    }

    .NameFont {
        color: #ffd7c1;
        font-family: 'Monotype Corsiva', Monotype Corsiva, cursive;
        font-style: italic;
    }

    .aRegister {
        text-align: right;
        margin-top: 1%;
        text-decoration: none;
    }

    .aRegister link {
        color: #ffd7c1;
    }

    .loginForm textarea, select, input{
        color: #a2745a;
        width: 75%;
        margin-left: 25%;
        border-radius: 4px;
        outline: none;
        background-color: #140a08;
        border: 1px solid #a2745a;
        text-indent: 5px;
        font-size: 1.25vH;
        height: 20%;
        margin-top: 2%;
    }

    .loginBtn{
        background-color: #140a08;
        border-radius: 4px;
        border: 1px solid #a2745a;
        color: #a2745a;
        margin-top: 2%;
        margin-left: 40%;
        width: 50%;
        height: 50%;
        font-size: 1.25vH;
    }

    .loginBtn:hover {
        background-color: #a2745a;
        color: #140a08;
        border: 1px solid #a2745a;
    }

    .loginBtn:focus {
        background-color: #a2745a;
        color: #140a08;
        border: 1px solid #a2745a;
    }

    ::-webkit-input-placeholder {
        /* Chrome/Opera/Safari */
        color: #a2745a;
    }

    ::-moz-placeholder {
        /* Firefox 19+ */
        color: #a2745a;
    }

    :-ms-input-placeholder {
        /* IE 10+ */
        color: #a2745a;
    }

    :-moz-placeholder {
        /* Firefox 18- */
        color: #a2745a;
    }

    input:-webkit-autofill {
        -webkit-box-shadow: 0 0 0px 1000px #140a08 inset;
        -webkit-text-fill-color: #a2745a;
    }

</style>
<body>
<div class="container-fluid">
    <!-- Row Header-->
    <div class="row" style="height: 15%">
        <!-- Left side-->
        <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2 header_bg"></div>
        <!-- Name-->
        <div class="col-md-3 col-sm-3 col-xs-3 col-lg-3 header_bg">
            <p class="NameFont" style="font-size: 6.5vh">Фiлiжанка</p>

            <p class="NameFont" style="font-size: 2vh"> Найароматнiша кава Канева</p>
        </div>
        <!-- Logo-->
        <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2 header_bg">
            <img src="/resources/images/logo3.png" alt="logo" height="100%" style="min-width: 80px">
        </div>
        <!-- between logo and user_password form-->
        <div class="col-md-1 col-sm-1 col-xs-1 col-lg-1 header_bg"></div>
        <!-- user_password-->
        <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2 header_bg">
            <div class="aRegister">
                <a href="/develop" style="color: #ffd7c1; font-size: 1.25vH;">Реєстрацiя</a>
            </div>
            <form action="login">
                <input type="text" class="loginForm" placeholder="Login" name="login">
                <input type="password" class="loginForm" placeholder="Password" name="password">
                <button type="submit" class="btn btn-default btn-xs loginBtn" style=" height: 20%">Вхiд</button>
            </form>
        </div>
        <!-- Right side-->
        <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2 header_bg"></div>
    </div>
    <!-- Row Body-->
    <div class="row" style="height: 85%">
        <!-- Left side body-->
        <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2">
            <!-- Left side body top-->
            <div class="row" style="height: 10%">
                <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 header_bg"></div>
            </div>
            <!-- Left side body botton-->
            <div class="row" style="height: 90%">
                <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 side_bg"></div>
            </div>
        </div>
        <!--Body-->
        <div class="col-md-8 col-sm-8 col-xs-8 col-lg-8">
            <!-- Body top-->
            <div class="row" style="height: 10%">
                <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 bodyTop"></div>
            </div>
            <!-- Body botton-->
            <div class="row" style="height: 90%">
                <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 bodyBotton">
                    <h1>Page is being developed</h1>
                </div>
            </div>
        </div>
        <!-- Right side body-->
        <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2">
            <!-- Right side body top-->
            <div class="row" style="height: 10%">
                <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 header_bg"></div>
            </div>
            <!-- Right side body botton-->
            <div class="row" style="height: 90%">
                <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 side_bg"></div>
            </div>
        </div>
    </div>
</div>
</body>
</body>
</html>
