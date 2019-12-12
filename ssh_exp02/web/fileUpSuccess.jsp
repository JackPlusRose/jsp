<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/11/24
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传成功</title>
</head>
<body>
<h3>文件上传成功</h3>
<hr/>
文件标题：<s:property value="+title"/><br/>
<s:property value="uploadFileName"/><br/>
<img src="<s:property value="'../save/+uploadFileName"/>"/>
</body>
</html>
