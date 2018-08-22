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


</head>
<body>
<link rel="stylesheet" type="text/css" href="../static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script src="../js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
<script src="../static/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <div class="container">
        <div class="col-md-12">
            <h1>用户管理系统-SSM</h1>
            <span class="glyphicon glyphicon-user">${requestScope.lastanme}</span>
        </div>
        <div class="row">
            <div class="col-md-5 col-md-offset-10">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">
                    <span class="glyphicon glyphicon-plus"></span>
                    新增
                </button>

                <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                    <div class="modal-dialog modal-sm" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="exampleModalLabel">添加</h4>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">lastname:</label>
                                        <input type="text" class="form-control" id="recipient-name">
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">emall:</label>
                                        <input type="text" class="form-control" id="recipient-name">
                                    </div>
                                    <div class="form-group">
                                        <label class="radio-inline">
                                            <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 男
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 女
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">depName:</label>
                                        <select class="form-control">
                                            <option>开发部</option>
                                            <option>测试部</option>
                                        </select>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                <button type="button" class="btn btn-primary">确定</button>
                            </div>

                        </div>
                    </div>
                </div>

                <button type="button" class="btn btn-primary" onclick="refresh()">
                    <span class="glyphicon glyphicon-refresh"></span>
                    刷新
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

                    <c:forEach var="emplist" items="${emplist}">
                        <tr>
                            <td>${emplist.id}</td>
                            <td>${emplist.lastName}</td>
                            <td>${emplist.emall}</td>
                            <td>${emplist.gender}</td>
                            <td>${emplist.department.depname}</td>
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
                    </c:forEach>
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


<%--<script type="text/javascript">--%>
    <%--function refresh() {--%>
        <%--alert("!")--%>
        <%--$.post("/getall",function () {--%>
            <%--alert("刷新成功！")--%>
        <%--})--%>
    <%--}--%>
<%--</script>--%>
</body>
</html>
