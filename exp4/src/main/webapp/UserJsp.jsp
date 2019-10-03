<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/27
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
    <jsp:useBean id="user" class="com.cslg.User">

    </jsp:useBean>
    <jsp:setProperty name="user" property="name" value="anne"/>
    <h1>
        <jsp:getProperty name="user" property="name"></jsp:getProperty>
    </h1>
</body>
</html>
