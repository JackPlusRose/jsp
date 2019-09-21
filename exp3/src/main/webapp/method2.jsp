<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/21
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>方法二</title>
    <script>
        document.onkeydown = function(e) {
            e = window.event || e;
            var k = e.keyCode;
            //屏蔽ctrl+R，F5键，ctrl+F5键  F3键！验证
            if ((e.ctrlKey == true && k == 82) || (k == 116)
                || (e.ctrlKey == true && k == 116)||k==114) {
                e.keyCode = 0;
                alert("当前页面不能刷新！");
                e.returnValue = false;
                e.cancelBubble = true;
                return false;

            }
        };
    </script>
</head>
<%
    if(application.getAttribute("counter")==null){
        String counter="1";
        application.setAttribute("counter",counter);
    }
    else{
        int count=Integer.valueOf((String)application.getAttribute("counter")).intValue();
        count++;
        application.setAttribute("counter",count+"");
    }
%>
<body bgcolor="#cce8cf">
该网站共被访问：<%=application.getAttribute("counter") %>次。
</body>

</html>