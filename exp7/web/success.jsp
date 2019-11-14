<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/11/14
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
    String aa = (String) request.getAttribute("info");%>
<%=aa%>
</body>
</html>
