<%@ page import="com.cslg.model.User" %><%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/11/14
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    User user;
%>
<% request.setCharacterEncoding("UTF-8");
    %>
用户名：${info.userName}密码：${info.password}

</body>
</html>
