<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/10/11
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>5-3</title>
</head>
<body>
<%
    Map<String, String> modleMap= new HashMap<String, String>();
    modleMap.put("百度","http://www.baidu.com");
    modleMap.put("雅虎","http://www.cn.yahoo.com");
    modleMap.put("谷歌","http://www.google.com");
    request.setAttribute("modleMap",modleMap);
%>
    <table width="500px" cellpadding="0" cellspacing="0" border="1px">
        <c:forEach items="${modleMap}" var="entry">
        <tr>
            <td>
                <c:out value="${entry.key}"></c:out>
            </td>
            <td>
                <c:out value="${entry.value}"></c:out>
            </td>
        </tr>
        </c:forEach>
    </table>

</body>
</html>
