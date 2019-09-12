<%@ page import="com.alibaba.druid.sql.visitor.functions.Now" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/7
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="refresh" content="1">
<head>
    <title>Title</title>
</head>
<body>
<%
    Date time=new Date();
    SimpleDateFormat sHour=new SimpleDateFormat("HH");
    SimpleDateFormat sMinute=new SimpleDateFormat("mm");
    SimpleDateFormat sSecond=new SimpleDateFormat("ss");
    String hour=sHour.format(time);
    String minute=sMinute.format(time);
    String second=sSecond.format(time);
%>
<h1 align="center">当前时间为：<%= hour%>:<%= minute%>:<%= second%></h1>
</body>
</html>
