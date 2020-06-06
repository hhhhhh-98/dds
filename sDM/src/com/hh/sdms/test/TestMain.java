package com.hh.sdms.test;

import com.hh.sdms.dao.DormitoryDao;
import com.hh.sdms.dao.StudentDao;
import com.hh.sdms.domain.Dormitory;
import com.hh.sdms.domain.Student;


public class TestMain {

    public static void main(String[] args) {
        Student stu = new Student();
        stu.setSno("315555");
        stu.setPsd("123456");
        stu.setSname("hhhhh");
        stu.setDno("419");
        stu.setPho("155****7880");
        StudentDao stdd = new StudentDao();
        stdd.addStudent(stu);
    }

}