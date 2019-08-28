package me.will.mysql.jdbc;

import java.sql.*;

public class MyConnection {

    //无需显示加载，jdbc会自动根据java.sql.Driver配置的驱动来加载驱动
    /*static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }*/

    private Connection connection;

    public MyConnection() throws SQLException {
        connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/test?serverTimezone=GMT%2B8", "root", "root");
    }

    public boolean insert(String sql) throws SQLException {
        Statement statement = connection.createStatement();
        return statement.execute(sql);
    }

    public static void main(String[] args) throws SQLException {
        MyConnection connection = new MyConnection();
        connection.insert("insert into t_student(name) values('will')");
    }



}
