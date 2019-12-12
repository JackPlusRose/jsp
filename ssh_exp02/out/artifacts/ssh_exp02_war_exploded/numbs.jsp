<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/11/24
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
页面访问<%=request.getSession().getAttribute("numb")%>次
</body>
</html>
