<%@ page import="java.sql.*" %>
<%@ page import="com.cslg.utils.Conn" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.cslg.entity.Employees" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/10/12
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title></title>
</head>
<body>
<%!
    List<Employees> employees = new ArrayList<Employees>();
%>
<%
    Connection conn = Conn.getConn();
    Statement st = Conn.getSt();
    if (st != null) {
        String sql = "select * from employees";
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery(sql);
        Integer id;
        String name;
        Integer age;
        String education;
        String address;
        Double salary;
        while (rs.next()) {
            id = rs.getInt(1);
            name = rs.getString(2);
            age = rs.getInt(3);
            education = rs.getString(4);
            address = rs.getString(5);
            salary = rs.getDouble(6);
            employees.add(new Employees(id, name, age, education, address, salary));
        }
        request.setAttribute("employees", employees);
    }
%>
<table width="600px" border="1">
    <tr>
        <td>
            编号
        </td>
        <td>
            名字
        </td>
        <td>
            薪水
        </td>
        <td>
            地址
        </td>
    </tr>
    <c:forEach items="${employees}" var="em">
        <tr>
            <td>
                    ${em.id}
            </td>
            <td>
                    ${em.name}
            </td>
            <td>
                    ${em.salary}
            </td>
            <td>
                    ${em.address}
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>