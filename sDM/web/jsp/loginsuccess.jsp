<%@ page import="com.hh.sdms.domain.Student" %><%--
  Created by IntelliJ IDEA.
  User: hh
  Date: 2020/3/22
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%

    Student s =(Student) request.getAttribute("stu");


%>
<head>
    <meta charset="UTF-8"/>
    <title>欢迎你,<%= s.getSname()%></title>
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

    </style>
    <script>
        function tag1() {
            alert("退宿成功！");
            window.close(this);
        }
    </script>
</head>
<body>
<div class="main">
    <div class="header">
        <div class="head-nav">
            <div class="head-nav-con clearFloat">
                <ul>
                    <li class="drop-down"><a href="#">首页</a>
                        <ul class="drop-down-content">
                            <li><a onclick="window.close(this)">退出系统</a></li>
                        </ul>
                    </li>
                    <li><a href="gr">个人信息</a></li>
                    <li class="drop-down"><a href="#">宿舍管理</a>
                        <ul class="drop-down-content">
                            <li><a href="/studnetDormitoryManagementSystem_war_exploded//html/ruzhuguanli.html">入住管理</a></li>
                            <li><a onclick="tag1()">退宿管理</a></li>
                            <li><a href="/studnetDormitoryManagementSystem_war_exploded//html/gongwubaoxiu.html">公物报修</a></li>

                        </ul>
                    </li>
                    <li class="drop-down"><a href="#">卫生评比</a>
                        <ul class="drop-down-content">
                            <li><a href="/studnetDormitoryManagementSystem_war_exploded/jsp/zhouchakoufen.jsp">周查扣分</a></li>
                            <li><a href="/studnetDormitoryManagementSystem_war_exploded/jsp/koufentongji.jsp">扣分统计</a></li>
                            <li><a href="/studnetDormitoryManagementSystem_war_exploded/jsp/weishengpingbi.jsp">卫生评比</a></li>

                        </ul>
                    </li>
                    <li class="drop-down"><a href="#">出入管理</a>
                        <ul class="drop-down-content">
                            <li><a href="/studnetDormitoryManagementSystem_war_exploded/jsp/laifangtongji.jsp">来访登记</a></li>
                            <li><a href="#">出入楼登记</a></li>
                        </ul>
                    </li>


                </ul>
            </div>
        </div>
    </div>
</div>

</body>
</html>
