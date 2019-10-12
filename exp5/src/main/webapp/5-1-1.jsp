<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/10/11
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>5-1-1</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
<table bgcolor="${param.bgcolor}" width="${param.width}" border="${param.border}" style="font-size:${param.size}" >
    <tr>
        <td>
            你好！
        </td>
        <td>
            hello
        </td>
    </tr>
    <tr>
        <td>
            hello！
        </td>
        <td>
            你好
        </td>
    </tr>
</table>
</body>
</html>
