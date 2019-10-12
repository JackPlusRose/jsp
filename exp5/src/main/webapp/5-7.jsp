<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/10/12
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>5-7</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
        String url = "jdbc:mysql://localhost:3306/o2o"; //数据库名
        String username = "root";  //数据库用户名
        String password = "123456";  //数据库用户密码
        Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

        if(conn != null){
            out.print("数据库连接成功！");
            out.print("<br />");
            }else{
                out.print("连接失败！");
            }
        }catch (Exception e) {
            //e.printStackTrace();
            out.print("数据库连接异常！");
        }
    %>
</table>
</body>
</html>
