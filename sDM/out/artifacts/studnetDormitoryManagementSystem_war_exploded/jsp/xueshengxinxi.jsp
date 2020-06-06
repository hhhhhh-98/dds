<%@ page import="com.hh.sdms.domain.Student" %>
<%@ page import="com.hh.sdms.dao.StudentDao" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: hh
  Date: 2020/4/22
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息管理</title>
</head>
<body>
<%
    ArrayList<Student> stu = new ArrayList<Student>();
    StudentDao stdd = new StudentDao();
    stu.add(stdd.sleStudentBySno("312017"));
    stu.add(stdd.sleStudentBySno("312018"));
    stu.add(stdd.sleStudentBySno("312019"));
    stu.add(stdd.sleStudentBySno("312020"));
%>
<%=stu.get(0).toString()%><br>
<%=stu.get(1).toString()%><br>
<%=stu.get(2).toString()%><br>
<%=stu.get(2).toString()%><br>
请输入要删除的学号：<input type="text" id="txt1"><button onclick="bt1()">删除</button>
</body>
</html>
