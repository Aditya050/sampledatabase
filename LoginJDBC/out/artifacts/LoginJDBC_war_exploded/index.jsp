<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11-11-2018
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>LOGIN</title>
  </head>
  <body>

  <form action="login" method="post">
  Name:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="username"><br><br>
  Password:&nbsp<input type="password" name=""password><br><br>
      <input type="submit" value="Login">
  </form>
  <br/><br/><br/>
  <%
      String message = (String)request.getSession().getAttribute("message");
      if (message != null){
          out.print(message);
      }
      request.getSession().setAttribute("message" , null);
  %>
  </body>
</html>
