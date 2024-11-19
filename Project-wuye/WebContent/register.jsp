<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="utf-8">
    <title>注册:物业管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link id="bs-css" href="${pageContext.request.contextPath}/css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/charisma-app.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bower_components/fullcalendar/dist/fullcalendar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bower_components/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" media="print">
    <link href="${pageContext.request.contextPath}/bower_components/chosen/chosen.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bower_components/colorbox/example3/colorbox.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bower_components/responsive-tables/responsive-tables.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/jquery.noty.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/noty_theme_default.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/elfinder.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/elfinder.theme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/jquery.iphone.toggle.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/uploadify.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/bower_components/jquery/jquery.min.js"></script>

    <!-- The fav icon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico">

</head>

<body background="${pageContext.request.contextPath}/img/bcg.jpg" style="background-repeat: no-repeat; background-size:cover; margin: auto;">
<div class="ch-container">
    <div class="row">
        <div class="col-md-12 center login-header">
            <h1>物业管理系统 - 用户注册</h1>
        </div>
    </div>

    <div class="row">
        <div class="well col-md-4 center login-box">
            <div class="alert alert-info">
                请输入注册信息.
            </div>
            <form data-toggle="validator" class="form-horizontal" action="${pageContext.request.contextPath}/user/register" method="post">
                <fieldset>
                    <div class="form-group col-md-12">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
                            <input type="text" class="form-control" name="username" placeholder="用户名" required>
                        </div>
                        <span class="help-block with-errors"></span>
                    </div>

                    <div class="form-group col-md-12">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
                            <input type="password" class="form-control" name="password" pattern="^[a-z0-9_]{6,18}$" placeholder="密码由字母、数字或下划线组成, 六位以上" required>
                        </div>
                        <span class="help-block with-errors"></span>
                    </div>

                    <div class="form-group col-md-12">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
                            <input type="password" class="form-control" name="confirmPassword" pattern="^[a-z0-9_]{6,18}$" placeholder="确认密码" required>
                        </div>
                        <span class="help-block with-errors"></span>
                    </div>

                    <div class="radio">
                        <label>
                            <input type="hidden" name="usertype" value="user">
                            <i class="glyphicon glyphicon-home"></i> 业主注册
                        </label>
                    </div>

                    <p class="center col-md-7">
                        <button type="submit" class="btn btn-primary">注册</button>
                    </p>
                    <p class="center">
                        <a href="${pageContext.request.contextPath}/login.jsp">已有账号？点击登录</a>
                    </p>
                </fieldset>
            </form>
        </div>
    </div>
</div>

<!-- external javascript -->
<script src="${pageContext.request.contextPath}/js/validator.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/moment/min/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/chosen/chosen.jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/colorbox/jquery.colorbox-min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.noty.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/responsive-tables/responsive-tables.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.raty.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.iphone.toggle.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.autogrow-textarea.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uploadify-3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.history.js"></script>
<script src="${pageContext.request.contextPath}/js/charisma.js"></script>
</body>
</html>
