<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/21
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session获取用户信息</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
    %>
    用户名：<%= request.getSession().getAttribute("username")%><br>
    密&nbsp;&nbsp;&nbsp;码：<%= request.getSession().getAttribute("password")%>
</body>
</html>
