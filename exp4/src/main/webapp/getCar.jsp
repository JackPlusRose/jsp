<%@ page import="com.cslg.Car" %><%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/27
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取车子属性</title>
</head>
<body>
    <%
        Car car = (Car) request.getAttribute("car");
    %>
    <h3>车子颜色：
        <%= car.getColor()%>
    </h3><br>
    <h3>是否有空调：
        <%= car.getCold()%>
    </h3>
</body>
</html>
