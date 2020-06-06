package com.hh.sdms.utils;

import java.sql.*;

public class JdbcConn {
    Statement stmt = null;
    Connection conn = null;
    ResultSet rst = null;


    public void init() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "123456");
            stmt = conn.createStatement();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addUpdDel(String sql) {
        try {

            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ResultSet selectSql(String sql) {
        try {
            rst = stmt.executeQuery(sql);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rst;
    }

    public void close() {
        try {
            if (conn != null) {
                conn.close();
                conn = null;
            }
            if (stmt != null) {
                stmt.close();
                stmt = null;
            }
            if (rst != null) {
                rst.close();
                rst = null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
