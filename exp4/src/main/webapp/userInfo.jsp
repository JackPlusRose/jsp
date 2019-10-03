<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/10/3
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>提交信息</title>
</head>
<body>
<form action="success.jsp" method="post">
    用户昵称:<input type="text" name="name"><br>
    密码:<input type="password" name="password"><br>
    确认密码:<input type="password" name="commitPassword"><br>
    性别:<input type="radio" name="gender" value="男">男&nbsp;&nbsp;
    <input type="radio" name="gender" value="女">女<br>
    爱好:<input type="checkbox" name="hobby" value="体育">体育&nbsp;&nbsp;
    <input type="checkbox" name="hobby" value="美术">美术&nbsp;&nbsp;
    <input type="checkbox" name="hobby" value="音乐">音乐&nbsp;&nbsp;
    <input type="checkbox" name="hobby" value="旅游">旅游<br>
<input type="submit">&nbsp;&nbsp;<input type="reset">
</form>
</body>
</html>
