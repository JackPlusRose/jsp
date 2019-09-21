<%@ page import="jdk.nashorn.internal.ir.RuntimeNode" %>
<%@ page import="java.util.function.Function" %><%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/20
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<html>
<head>
    <title>我的计算器</title>
</head>
<body bgcolor="#cce8cf">
<%!
    String result="";
%>
<%
    String num1 = request.getParameter("num1");
    String num2 = request.getParameter("num2");
    String operator = request.getParameter("operator");
    if(num1!=null && num2!=null && operator!=null){
        result = num1 + operator + num2 + "=";
        double num01 = Integer.parseInt(num1);
        double num02 = Integer.parseInt(num2);
        double temp;
        if (operator.equals("+")) {
            temp = num01 + num02;
            result = result + temp;
        } else if (operator.equals("-")) {
            temp = num01 - num02;
            result = result + temp;
        } else if (operator.equals("*")) {
            temp = num01 * num02;
            result = result + temp;
        } else if (operator.equals("/")) {
            temp = num01 / num02;
            result = result + temp;
        } else {
            result = "输入错误";
        }
    }
%>
<h1>我的计算器</h1>
<hr/>
<form action="myCalculator.jsp" method="post">
    <label for="num1">请输入第一个数:</label>
    <input type="text" id="num1" name="num1">
    <br/>
    <label for="operator">请选择运算方式:</label>
    <select id="operator" name="operator">
        <option value="--请选择--">--请选择--</option>
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>
    <br/>
    <label for="num2">请输入第二个数:</label>
    <input type="text" id="num2" name="num2">
    <br/>
    <input type="submit" value="计算">&nbsp;&nbsp;
    <input type="reset" value="重置">
    <br>
    <label for="result">结果</label>
    <input type="text" id="result" name="result" value="<%= result%>">
</form>
</body>
</html>
