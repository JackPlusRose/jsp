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
<%
    request.setCharacterEncoding("utf-8");
    String username=request.getParameter("username");
    String password = request.getParameter("password");
    if(username!=null && password!=null){
        request.getSession().setAttribute("username",username);
        request.getSession().setAttribute("password",password);
        response.sendRedirect("/com.cslg/getUserInfo.jsp");
    }
%>
<form action="userInfo.jsp" method="post">
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
</html>
