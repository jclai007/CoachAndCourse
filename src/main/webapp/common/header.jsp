<%@ page import="persistent.pojo.user.User" %>
<%--
  Created by IntelliJ IDEA.
  User: Aim-Trick
  Date: 2018/11/10
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--输出,条件,迭代标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt" %>
<!--数据格式化标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="sql" %>
<!--数据库相关标签库-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn" %>
<!--常用函数标签库-->
<%@ page isELIgnored="false" %>
<!--支持EL表达式，不设的话，EL表达式不会解析-->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <%--编辑网站的 Bootstrap 核心 CSS 文件--%>
    <%--新 Bootstrap 核心 CSS 文件--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <%--jQuery文件。务必在bootstrap.min.js 之前引入--%>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <%--最新的 Bootstrap 核心 JavaScript 文件--%>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--<script src="https://raw.githubusercontent.com/emn178/js-md5/master/build/md5.min.js"></script>--%>
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <%--Plugins--%>
    <%--dateTimePicker--%>
    <% request.setAttribute("base_url", request.getContextPath()); %>
    <link href="${base_url}/common/css/plugins/dateTimePicker/bootstrap-datetimepicker.min.css" rel="stylesheet"
          media="screen">
    <script type="text/javascript" src="${base_url}/common/js/plugins/dateTimePicker/bootstrap-datetimepicker.min.js"
            charset="UTF-8"></script>
    <script type="text/javascript" src="${base_url}/common/js/plugins/dateTimePicker/bootstrap-datetimepicker.zh-CN.js"
            charset="UTF-8"></script>
    <script src="${base_url}/common/js/plugins/dateTimePicker/config.js"></script>
    <%--用户自定义--%>
    <link rel="stylesheet" href="${base_url}/common/css/food_style.css">
    <script src="${base_url}/common/js/consts/data.js"></script>
    <script src="${base_url}/common/js/utils/language.js"></script>
    <script src="${base_url}/common/js/utils/utils.js"></script>
    <script src="${base_url}/common/js/consts/config.js"></script>
    <script src="${base_url}/common/js/components/sidebar.js"></script>
    <script src="${base_url}/common/js/components/header.js"></script>
    <script src="${base_url}/common/js/utils/listener.js"></script>
    <script src="${base_url}/common/js/main.js"></script>
    <script src="${base_url}/common/js/utils/formchecker.js"></script>
</head>
<body>
<header>
    <%
        boolean isLogged = "true".equals(session.getAttribute("INFO"));
    %>
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#example-navbar-collapse">
                    <span class="sr-only">切换导航</span>
                </button>
                <a class="logo-text" href="/index.jsp">
                    <img id="logo" src="/common/img/logo.png" alt="">
                    <a class="navbar-brand" href="/index.jsp">Coach&Course</a>
                </a>
            </div>
            <%
                User user = (User) session.getAttribute("CNC");
                String who = isLogged ? user.getNickname() : "未登陆";
            %>


            <div class="collapse navbar-collapse" id="example-navbar-collapse">

                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown dropdown-default" id="user-panel">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="" alt="">
                            <span id="user-nickname"><%=who%></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu ">
                            <% if (isLogged) { %>
                            <li><a href="/admin/dashboard.jsp">个人中心</a></li>
                            <li class="divider"></li>
                            <li><a id="logout-btn">注销登录</a></li>
                            <% } else { %>
                            <li><a href="/admin/login.jsp" id="#login-btn">登录</a></li>
                            <li class="divider"></li>
                            <li><a href="/admin/register.jsp">注册</a></li>
                            <% } %>
                        </ul>
                    </li>
                    <li><a href="#">鲜甜水果</a></li>
                    <li><a href="#">生鲜蔬菜</a></li>
                    <li class="active dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            恋上美食 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">小零食</a></li>
                            <li><a href="#">饭后甜点</a></li>
                            <li><a href="#">进口干粮</a></li>
                            <li><a href="#">另类零食</a></li>
                        </ul>
                    </li>
                </ul>

            </div>
        </div>
    </nav>


</header>

