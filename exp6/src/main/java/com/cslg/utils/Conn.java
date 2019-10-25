package com.cslg.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Conn {
    public static String url;
    public static String username;
    public static String password;
    public static Connection conn;
    public static Statement st;
    static{
         url = "jdbc:mysql://localhost:3306/exp6?useUnicode=true&characterEncoding=UTF-8"; //数据库名
         username = "root";  //数据库用户名
         password = "123456";  //数据库用户密码
    }
    public static Connection getConn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            conn = DriverManager.getConnection(url, username, password);  //连接状态
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static Statement getSt(){
        try {
            st = conn.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return st;
    }
}
