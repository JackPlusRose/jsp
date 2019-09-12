<%@ page import="com.cslg.entity.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/6
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息表</title>
</head>
<body>
    <%
        List<Student> studentList= new ArrayList<Student>();
        studentList.add(new Student("001","李白","男","01",723.0));
        studentList.add(new Student("002","孟浩然","男","02",689.0));
        studentList.add(new Student("003","杨玉华","女","03",600.0));
    %>
    <table width="400" border="1pc" cellspacing="0" cellpadding="0" align="center">
        <caption>学生信息表</caption>
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>班级</td>
            <td>成绩</td>
        </tr>
        <%
            for(int i=0;i<studentList.size();i++){
                Student student= studentList.get(i);
                %>
        <tr>
            <td>
                <%=student.getNum() %>
            </td>
            <td>
                <%=student.getName() %>
            </td>
            <td>
                <%=student.getGender()%>
            </td>
            <td>
                <%=student.getStudentClass() %>
            </td>
            <td>
                <%=student.getScore()%>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
