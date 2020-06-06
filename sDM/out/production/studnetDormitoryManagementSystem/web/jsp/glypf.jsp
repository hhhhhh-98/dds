<%@ page import="com.hh.sdms.domain.Dormitory" %>
<%@ page import="com.hh.sdms.dao.DormitoryDao" %><%--
  Created by IntelliJ IDEA.
  User: hh
  Date: 2020/4/22
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>宿舍打分</title>
</head>
<body>
<div style="position: absolute; top: 50%;left: 50%;transform: translate(-50%,-50%)">
<form action="szfsservlet" method="post">
   419: <input type="text" id="txt1"><br>
    420:<input type="text" id="txt2"><br>
    421:<input type="text" id="txt3"><br>
    422:<input type="text" id="txt4"><br>
    <input type="submit" value="提交">
    </form>
</div>
</body>
</html>
