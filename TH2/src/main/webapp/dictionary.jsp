<%--
  Created by IntelliJ IDEA.
  User: duytran
  Date: 1/31/21
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.lang.String" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("Hello", "Xin Chao");
    dic.put("bey", "Tam Biet");
    dic.put("how are you", "Ban Kheo Khong");
    String search = request.getParameter("search");
    String result = dic.get(search);
    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Not found");
    }
%>
</h2>
</body>
</html>
