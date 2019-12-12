<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/11/24
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
    文件上传
    <hr/>
    <form action="upload" method="post" enctype="multipart/form-data">
        <s:textfield name="title" label="文件标题"/><br/>
        <s:file name="upload" label="选择文件"/><br/>
        <s:submit value="上传"/>
    </form>
</body>
</html>
