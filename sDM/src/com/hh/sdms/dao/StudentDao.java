package com.hh.sdms.dao;

import com.hh.sdms.domain.Student;
import com.hh.sdms.utils.JdbcConn;

import java.sql.*;

public class StudentDao {
    JdbcConn jdc = new JdbcConn();
    ResultSet rst = null;

    public void addStudent( Student stu ) {

        jdc.init();
        jdc.addUpdDel("insert into student values ('" + stu.getSno() + "','" + stu.getSname() + "','"+stu.getPsd() + "','"+stu.getPho()+"');");
        jdc.close();
    }

    public void delStudentBySno(String sno) {
        jdc.init();
        jdc.addUpdDel("delete from student where sno ='" + sno + "';");
        jdc.close();
    }

    public void updStuentBySno(Student stu, String sno) {
        jdc.init();
        jdc.addUpdDel("update student set sno ='" + stu.getSno() + "',sname='" + stu.getSname() +"'password='"+stu.getPsd()+"'sph='"+stu.getPho() +"' where sno = '" + sno + "';");
        jdc.close();
    }

    public Student sleStudentBySno(String sno) {
        Student stu = new Student();

        jdc.init();

        rst = jdc.selectSql("select * from student where sno='" + sno + "';");
        try {
            while (rst.next()) {
                stu.setSno(rst.getString("sno"));
                stu.setSname(rst.getString("sname"));
                stu.setPsd(rst.getString("password"));
                stu.setPho(rst.getString("sph"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            rst.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        jdc.close();

        return stu;
    }


}
