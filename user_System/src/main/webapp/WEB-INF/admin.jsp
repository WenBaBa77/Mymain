<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/17 0017
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../static/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container">
        <div class="col-md-12">
            <h1>用户管理系统-SSM</h1>
            <span class="glyphicon glyphicon-user">${requestScope.lastanme}</span>
        </div>

        <div class="row">

            <div class="col-md-5 col-md-offset-10">
                <button type="button" class="btn btn-primary">
                    <span class="glyphicon glyphicon-plus"></span>
                    新增
                </button>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <table class="table table-hover">
                    <tr>
                        <th>#</th>
                        <th>lastName</th>
                        <th>emall</th>
                        <th>gender</th>
                        <th>depName</th>
                        <th>操作</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>zhangshan</td>
                        <td>12456789@qq.com</td>
                        <td>女</td>
                        <td>开发部</td>
                        <td>
                            <button class="btn btn-primary btn-sm">
                                <span class="glyphicon glyphicon-pencil"></span>
                                编辑
                            </button>
                            <button class="btn btn-danger btn-sm">
                                <span class="glyphicon glyphicon-trash" aria></span>
                                删除
                            </button>
                        </td>
                    </tr>

                </table>
            </div>
            <%--<ul class="pagination pagination-lg">--%>
                <%--<li><a href="#">&laquo;</a></li>--%>
                <%--<li><a href="#">首页</a></li>--%>
                <%--<li><a href="#">1</a></li>--%>
                <%--<li><a href="#">2</a></li>--%>
                <%--<li><a href="#">3</a></li>--%>
                <%--<li><a href="#">4</a></li>--%>
                <%--<li><a href="#">5</a></li>--%>
                <%--<li><a href="#">末页</a></li>--%>
                <%--<li><a href="#">&raquo;</a></li>--%>
            <%--</ul>--%>
        </div>
    </div>
</body>
</html>
