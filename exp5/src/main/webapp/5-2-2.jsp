<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/10/11
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>5-2-2</title>
</head>
<body>
<jsp:useBean id="num" class="com.cslg.Number"></jsp:useBean>
<jsp:setProperty name="num" property="*"></jsp:setProperty>
<%
    for (int i=1;i<=num.getNumber();i++){
        for(int j=1;j<=i;j++){
            out.print(i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;");
        }
        out.print("<br>");
    }
%>
</body>
</html>
