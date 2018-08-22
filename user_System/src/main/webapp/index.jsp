<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/23 0023
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">

    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">



    <link rel="stylesheet" type="text/css" href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/cover.css"/>
    <title>Please sign in</title>
</head>
<body>

<div class="site-wrapper">

    <div class="site-wrapper-inner">

        <div class="cover-container">

            <div class="masthead clearfix">
                <div class="inner">
                    <img src="img/wenlogin1.png"/>
                </div>
            </div>

            <div class="inner cover">
                <h3 class="cover-heading">Please sign in</h3>
                <form action="login" method="post">
                    <input type="text" class="form-control"  placeholder="用户名" name="lastanme" style="width:300px; margin-left:27%;">
                    <input type="password" class="form-control"  placeholder="密码" name="emal" style="width:300px; margin-left:27%;margin-top: 10px;">
                    <p class="lead"></p>
                    <p class="lead">
                        <input class="btn btn-lg btn-default" type="submit" value="登录" style="width: 180px;">
                    </p>
                </form>
            </div>
            <div class="mastfoot">
                <div class="inner">
                    <p><a href="#">1_0_1测试版</a>, by <a href="https://twitter.com/mdo">@wen</a>.</p>
                </div>
            </div>

        </div>

    </div>
</div>
</body>
</html>
