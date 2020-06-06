<%@ page import="com.hh.sdms.domain.Dormitory" %>
<%@ page import="com.hh.sdms.dao.DormitoryDao" %><%--
  Created by IntelliJ IDEA.
  User: hh
  Date: 2020/4/17
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>扣分统计</title>
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

   %>
   <div style="position: absolute;top: 50%; left: 50%;transform: translate(-50%,-50%);">
   <table class="gridtable">
       <tr>
           <th>寝室号</th>
           <th>当月分数  </th>
       </tr>
       <tr>
           <td>419</td>
           <td>  <%=  ddo.sleSDormitoryByDno("419").getGrade()%></td>
       </tr>
       <tr>
           <td>420</td>
           <td> <%=  ddo.sleSDormitoryByDno("420").getGrade()%></td>
       </tr>
       <tr>
           <td>421</td>
           <td> <%=  ddo.sleSDormitoryByDno("421").getGrade()%></td>
       </tr>
   </table>
   </div>

</body>
</html>
