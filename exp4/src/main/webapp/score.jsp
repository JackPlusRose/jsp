<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/10/3
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <title>学生成绩</title>
</head>
<body>
<jsp:useBean id="student" class="com.cslg.Score"></jsp:useBean>
<jsp:setProperty name="student" property="*" ></jsp:setProperty>
<form action="score.jsp" method="post">
    姓名:<input type="text" name="name"><br>
    成绩一:<input type="text" name="one"><br>
    成绩二:<input type="text" name="two"><br>
    成绩三:<input type="text" name="three"><br>
    成绩四:<input type="text" name="four"><br>
    成绩五:<input type="text" name="five"><br>
    <input type="submit" value="提交">
</form>
<%
    request.setCharacterEncoding("UTF-8");
    if (request.getParameter("five")!=null){
%>
${student.name}你好：
总分：${student.one + student.two + student.three + student.four + student.five}<br/>
平均分：${(student.one + student.two + student.three + student.four + student.five)/5}
<%
    }
%>
</body>
</html>
