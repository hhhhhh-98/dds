<%--
  Created by IntelliJ IDEA.
  User: hh
  Date: 2020/4/22
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <meta charset="UTF-8"/>
    <title>管理员</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        body,
        html {
            font-size: 14px;
            font-family: 'Microsoft Yahei', '微软雅黑', 'Simsun', '宋体', 'Arial', sans-serif;
        }
        img {
            border: 0;
        }
        a {
            color: #fff;
            text-decoration: none;
            outline: none;
        }
        ol,
        ul,
        li {
            list-style: none;
        }
        .head-nav {
            width: 100%;
            height: 60px;
            background: #007130;
        }
        .head-nav-con {
            width: 1200px;
            height: 60px;
            margin: auto;
        }
        .head-nav-con ul li {
            width: 170px;
            float: left;
            font-size: 20px;
            text-align: center;
        }
        .head-nav-con ul li:hover {
            background: #ff9c01;
        }
        .head-nav-con ul a {
            display: block;
            text-decoration: none;
            text-align: center;
            line-height: 60px;
            color: white;
        }
        .head-nav-con .drop-down {
            position: relative;
        }
        .head-nav-con .drop-down-content {
            padding: 0;
            display: none;
            position: absolute;
            z-index: 1;
            background: #007130;
        }
        .head-nav-con .drop-down-content li:hover > a {
            background-color: #ff9c01;
        }
        .head-nav-con .drop-down:hover .drop-down-content {
            display: block;
        }
        .head-nav-con .drop-down-2 {
            position: relative;
        }
        .head-nav-con .drop-down-content-2 {
            padding: 0;
            display: none;
            position: absolute;
            z-index: 1;
            background-color: #007130;
            right: -170px;
            top: 0;
        }
        .head-nav-con .drop-down-content-2 > li {
            float: none;
            background-color: #007130;
        }
        .head-nav-con .drop-down-content-2 li:hover a {
            background-color: #ff9c01;
        }
        .head-nav-con .drop-down-2:hover .drop-down-content-2 {
            display: block;
        }
    </style>
</head>
<body>
<div class="main">
    <div class="header">
        <div class="head-nav">
            <div class="head-nav-con clearFloat">
                <ul>
                    <li><a href="#">首页</a></li>
                    <li><a href="/studnetDormitoryManagementSystem_war_exploded/jsp/xueshengxinxi.jsp">学生信息管理</a></li>
                    <li><a href="/studnetDormitoryManagementSystem_war_exploded/jsp/glypf.jsp">宿舍评分</a></li>
                    <li><a href="/studnetDormitoryManagementSystem_war_exploded/jsp/glypf.jsp">查找学生</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>