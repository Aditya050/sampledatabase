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
