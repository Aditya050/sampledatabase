<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11-11-2018
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String message = (String)request.getSession().getAttribute("message");
    if (!message.equals("Welcome")){
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
%>
<h2>Welcome ${username}</h2>

<form method="get" action="login">
    <input type="submit" value="Logout">

</body>
</html>
