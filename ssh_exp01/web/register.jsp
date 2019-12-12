<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/11/10
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
    <form action="register" method="post">
        用户名：<input type="text" name="name"><br/>
        密码：<input type="password" name="password"><br/>
        确认密码：<input type="password" name="password2"><br/>
        <input type="submit" value="注册" onclick="return isTrue()">
    </form>
</body>
<script>
    function $(id) {
        return document.getElementById(id);
    }
    function isTrue() {
        var name = $("name").value;
        var password = $("password").value;
        var password2 = $("password2").value;
        if(name === '' || password === '' || password2 === ''){
            alert("输入不得为空！");
            return false;
        }else if(password !== password2){
            alert("密码和确认密码输入不一致！，请重新输入！");
            return false;
        }else {
            return true;
        }
    }
</script>
</html>
