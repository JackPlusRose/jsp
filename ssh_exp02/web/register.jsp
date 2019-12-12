<%@ taglib prefix="s" uri="/struts-tags" %>
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
    <hr/>
<s:form  action="register" method="POST" onsubmit="return check(this)">
    <table border="1">
        <tr>
            <td><s:textfield name="userName" label="姓名" size="16"/></td>
        </tr>
        <tr>
            <td><s:password name="userPassword" label="密码" size="18"/></td>
        </tr>
        <tr>
            <td><s:textfield name="userAge" label="年龄" size="16"/></td>
        </tr>
        <tr>
            <td><s:textfield name="userTelephone" label="电话" size="16"/></td>
        </tr>
        <tr>
            <td><s:submit value="提交"/></td>
        </tr>
    </table>
</s:form>
</body>
<script>
    function trim(str) {
        return str.replace(/^\s * /,"").replace(/\s * $/,"");
    }
    function check(form) {
        var errorStr="";
        var userName = trim(form.userName.value);
        var userPassword = trim(form.userPassword.value);
        var userAge = trim(form.userAge.value);
        var userTelephone = trim(form.userTelephone.value);
        var pattern = /^\d{8}$/;
        if(userName === null || userName===""){
            errorStr = "用户名不能为空！";
        }
        else if(userPassword.length > 16 || userPassword.length < 6){
            errorStr = "密码长度必须在6~16";
        }
        else if(userAge > 130 || userAge < 0){
            errorStr = "年龄必须在0~130之间";
        }
        else if(!pattern.test(userTelephone)){
            errorStr = "电话号码由8位阿拉伯数字组成！";
        }
        if(errorStr === "")
        {
            return true;
        }else
        {
            alert(errorStr);
            return false;
        }
    }
</script>
</html>
