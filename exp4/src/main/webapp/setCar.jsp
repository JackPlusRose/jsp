<%@ page import="java.util.ArrayList" %>
<%@ page import="com.cslg.Car" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/27
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>设置车子属性</title>
</head>
<body>
    <jsp:useBean id="car" class="com.cslg.Car" scope="request"/>
    <jsp:setProperty name="car" property="color" value="红色"/>
    <jsp:setProperty name="car" property="cold" value="false"/>
    <%
        request.setAttribute("car",car);
        request.getRequestDispatcher("getCar.jsp").forward(request,response);%>
</body>
</html>
