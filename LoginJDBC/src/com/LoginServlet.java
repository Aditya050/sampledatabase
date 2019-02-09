package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String Password=request.getParameter("Password");


            if(LoginDao.validate(username,Password))
            {
                request.getSession().setAttribute("message" , "Welcome");
                request.setAttribute("username" , username);
                request.getRequestDispatcher("Welcome.jsp").forward(request,response);
            }
            else {
                request.getSession().setAttribute("message", "Incorrect Username or Password");
                response.sendRedirect("index.jsp");
            }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
