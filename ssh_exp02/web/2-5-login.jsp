<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/11/24
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="LoginTitle"></s:text></title>
</head>
<body>
    <s:form action="checkLogin" method="POST">
        <s:textfield name="name" key="loginName" size="20"/>
        <s:password name="password" key="loginPassword" size="20"/>
        <s:submit key="loginSubmit"/>
    </s:form>
</body>
</html>
