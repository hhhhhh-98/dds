<%@ page import="com.hh.sdms.domain.Dormitory" %>
<%@ page import="com.hh.sdms.dao.DormitoryDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Comparator" %>
<%@ page import="static java.util.Comparator.comparing" %><%--
  Created by IntelliJ IDEA.
  User: hh
  Date: 2020/4/17
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>卫生评比</title>

    <style type="text/css">
        table.gridtable {
            font-family: verdana,arial,sans-serif;
            font-size:11px;
            color:#333333;
            border-width: 1px;
            border-color: #666666;
            border-collapse: collapse;
        }
        table.gridtable th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #dedede;
        }
        table.gridtable td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #ffffff;
        }
    </style>
</head>
<body>
<%
    DormitoryDao ddo = new DormitoryDao();
    ArrayList<Dormitory> dl = new ArrayList<Dormitory>();
    dl.add(ddo.sleSDormitoryByDno("419"));
    dl.add(ddo.sleSDormitoryByDno("420"));
    dl.add(ddo.sleSDormitoryByDno("421"));
    dl.sort(new Comparator<Dormitory>() {
        @Override
        public int compare(Dormitory o1, Dormitory o2) {
            return (o1.getGrade()-o2.getGrade());
        }
    });

%>
<div style="position: absolute;top: 50%; left: 50%;transform: translate(-50%,-50%);">
    <table class="gridtable">
        <tr>
            <td>排名情况</td>
        </tr>
        <tr>
            <td>  <%=  dl.get(0).getDno()%></td>
        </tr>
        <tr>
            <td>  <%=  dl.get(1).getDno()%></td>
        </tr>
        <tr>
            <td>  <%=  dl.get(2).getDno()%></td>
        </tr>
    </table>
</div>
</body>
</html>
