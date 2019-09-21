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
    <title>请求数据</title>
</head>
<body>
<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/20
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#cce8cf">
<form action="getData.jsp" method="post">
    <label for="user">用户名:</label>
    <input type="text" id="user" name="username">
    <br/>
    <label for="password">密&nbsp;&nbsp;&nbsp;码:</label>
    <input type="password" id="password" name="password">
    <br/>
    <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" value="重置">
</form>
</body>

