<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/11/14
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
    String mj;
if (request.getAttribute("mj").equals("-1")){
     mj="数据输入错误！";
}else{
     mj="面积为："+request.getAttribute("mj");
}
;%>
<%= mj%>
</body>
</html>
