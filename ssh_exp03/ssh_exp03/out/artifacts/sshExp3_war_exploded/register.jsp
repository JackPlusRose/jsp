<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/12/6
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><s:text name="基于SH的应用"></s:text></title>
</head>
<body>
<s:form action="register" method="post">
    <br><br><br><br><br><br>
    <table border="1" align="center">
        <tr>
            <td>
                <s:textfield name="userName" label="用户名字" size="18"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:password name="password1" label="用户密码" size="18"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:password name="password2" label="再次输入密码" size="18"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="清空"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <s:a href="http://localhost:8080/sshExp3/login.jsp">返回</s:a>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>
