<%@ page import="java.util.ArrayList" %>
<%@ page import="com.cslg.entity.CardId" %>
<%@ page import="java.util.List" %>
<%@ page import="static sun.misc.MessageUtils.out" %><%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2019/9/12
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>身份证-生日表</title>
</head>
<body>
    <%
        List<CardId> cardIdList= new ArrayList<CardId>();
        cardIdList.add(new CardId("010020199601026929"));
        cardIdList.add(new CardId("01002019971112692"));
        cardIdList.add(new CardId("010020199711126929"));
    %>
    <table align="center" width="500px" border="1px" cellpadding="0" cellspacing="0">
        <tr>
            <td>身份证</td>
            <td>生日</td>
        </tr>
        <%
            for(int i=0;i<cardIdList.size();i++){
                CardId cardId = cardIdList.get(i);
                if (cardId.getCardId().length()!=18)
                    //如果有身份证不等于18位则跳过此数据
                    continue;
        %>
        <tr>
            <td>
                <%= cardId.getCardId()%>
            </td>
            <td>
                <%= cardId.getBirthday()%>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
