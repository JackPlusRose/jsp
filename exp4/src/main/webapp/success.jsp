<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/10/3
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>成功</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="userinfo" class="com.cslg.UserInfo"></jsp:useBean>
<jsp:setProperty name="userinfo" property="*"></jsp:setProperty>
<%
    String [] str=userinfo.getHobby();
%>
用户昵称：${userinfo.name}<br>
密码：${userinfo.password}<br>
性别：${userinfo.gender}<br>
爱好：<%
    for(int i=0;i<str.length;i++){
        %>
&nbsp;&nbsp;<%= str[i]%>
<%
    }
%>
<br>
<button onclick="back()">返回</button>
</body>
</html>
<script>
    function back() {
        window.history.go(-1);
    }
</script>
