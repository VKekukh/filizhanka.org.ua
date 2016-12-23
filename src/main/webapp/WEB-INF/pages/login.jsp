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
    .header {
        background-image: url("/resources/images/backgroundHeader.jpg");
    }

    .sideTop {
        background-image: url("/resources/images/backgroundHeader.jpg");
        height: 10%;
    }
    .sideBotton {
        background-image: url("/resources/images/backgroundSide.jpg");
        height: 89%;
    }
    .bodyTop{
        background-image: url("/resources/images/bodyTop.jpg");
        height: 10%;
    }
    .bodyBotton{
        background-image: url("/resources/images/body.jpg");
        height: 89%;
    }
    .login {
        border-radius: 4px;
        outline: none;
        background-color: #140a08 !important;
        color: #a2745a;
        border: 1px solid #a2745a;
        width: 75%;
        text-indent: 5px;
        margin-left: 25%;
        font-size: 1.25vh;
        font-size: 1.25vw;
    }

    .btnLogin {
        background-color: #140a08;
        border-radius: 4px;
        border: 1px solid #a2745a;
        margin-top: 2%;
        width: 50%;
        height: 50%;
        margin-left: 40%;
        color: #a2745a;
        font-size: 1.35vw;
    }

    .btnLogin:hover {
        background-color: #a2745a;
        color: #140a08;
        border: 1px solid #a2745a;
    }

    .btnLogin:focus {
        background-color: #a2745a;
        color: #140a08;
        border: 1px solid #a2745a;
    }

    .aReestration {
        text-align: right;
        margin-top: 1%;
        color: #a2745a;
        text-decoration: none;
    }

    .aReestration link {
        color: #a2745a;
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

    .no-gutter {
        padding-right: 0;
        padding-left: 0;
    }

    .FilizhankaFont{
        color: #ffd7c1;
        font-family: 'Monotype Corsiva', Monotype Corsiva, cursive;
        font-style: italic;
    }
</style>

<body>
<div class="container-fluid">
    <div class="row header" style="height: 14%; ">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-gutter">
            <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2">

            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 no-gutter" style="align:center">


                <p class="FilizhankaFont" style="font-size: 4vw">Фiлiжанка</p>

                <p class="FilizhankaFont" style="font-size: 1.5vw"> Найароматнiша кава Канева</p>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2 no-gutter">
                <img src="/resources/images/logo3.png" alt="logo" height="auto" width="85%" style="min-width: 80px">
            </div>
            <div class="col-md-1 col-sm-1 col-xs-1 col-lg-1 no-gutter">

            </div>
            <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2 no-gutter">
                <div class="aReestration">
                    <a href="login.jsp" style="color: #a2745a">Реєстрацiя</a>
                </div>

                <form action="login">
                    <input type="text" class="login" placeholder="Login" name="login" style="margin-top: 2%; height: 20%">
                    <input type="password" class="login" placeholder="Password" name="password" style="margin-top: 1%; height: 20%">

                    <button type="submit" class="btn btn-default btn-xs btnLogin" style=" height: 20%">Вхiд</button>
                </form>
            </div>
            <div class="col-md-1 col-sm-1 col-xs-1 col-lg-1">
            </div>
        </div>
    </div>
    <div class="row header" style="height: 83.5%; ">
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 no-gutter">
            <div class="short-div sideTop"></div>
            <div class="short-div sideBotton"></div>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8  no-gutter">
            <div class="short-div bodyTop"></div>
            <div class="short-div bodyBotton"></div>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2  no-gutter">
            <div class="short-div sideTop"></div>
            <div class="short-div sideBotton" ></div>
        </div>
    </div>
</div>
</body>
</body>
</html>
