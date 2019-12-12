<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/11/24
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>校验成功</title>
</head>
<body>
校验通过，用户信息如下：
<hr>
姓名：<s:property value="userName"/><br/>
密码：<s:property value="userPassword"/><br/>
年龄：<s:property value="userAge"/><br/>
电话：<s:property value="userTelephone"/>
</body>
</html>
