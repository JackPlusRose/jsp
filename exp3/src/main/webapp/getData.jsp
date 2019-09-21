<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/21
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取数据</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
用户名：<%= request.getParameter("username")%><br>
密&nbsp;&nbsp;&nbsp;码：<%= request.getParameter("password")%><br>
使用的协议:<%= request.getProtocol()%><br>
请求的URI: <%= request.getServletPath()%><br>
请求方法: <%= request.getMethod()%><br>
远程地址: <%= request.getRemoteAddr()%><br>
</body>
</html>
