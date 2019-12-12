<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/11/24
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="successPage"/></title>
</head>
<body>
    <hr>
    <s:text name="loginName"/>:<s:property value="name"/><br>
    <s:text name="loginPassword"/>:<s:property value="password"/>
</body>
</html>
