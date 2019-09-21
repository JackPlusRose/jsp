<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/21
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>方法一</title>
</head>
<%
    if(application.getAttribute("counter")==null){
        String counter="0";
        application.setAttribute("counter",counter);
    }
    else{
        int count=Integer.valueOf((String)application.getAttribute("counter")).intValue();
        count++;
        application.setAttribute("counter",count+"");
    }
%>
<body bgcolor="#cce8cf">
该网站共被访问：<%=application.getAttribute("counter") %>次。
</body>

</html>