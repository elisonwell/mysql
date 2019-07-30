package me.will.mysql.jdbc;

import java.sql.*;

public class MyConnection {

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private Connection connection;

    public MyConnection() throws SQLException {
        connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    }


    public boolean insert(String sql) throws SQLException {
        Statement statement = connection.createStatement();
        return statement.execute(sql);
    }



}
