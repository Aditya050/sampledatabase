package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    public static boolean validate(String username,String Password) {
        boolean status=false;
        try {
            String url = "jdbc:mysql://localhost:3306/electivetutorial";
            String user = "root";
            String password = "";
            Connection connection = DriverManager.getConnection(url, user, password);
            String sql = "select * from loginsample where username=? and password=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, Password);
            ResultSet resultSet = preparedStatement.executeQuery();
            status=resultSet.next();
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return status;
    }
}
