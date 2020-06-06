package com.hh.sdms.servlet;

import com.hh.sdms.dao.StudentDao;
import com.hh.sdms.domain.Student;

import java.io.IOException;

public class dologinServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        StudentDao std = new StudentDao();
        Student stu = null;
        stu = std.sleStudentBySno(userName);

            if (stu.getPsd().equals(password)) {
                      request.setAttribute("stu",stu);
                      request.getRequestDispatcher("/jsp/loginsuccess.jsp").forward(request,response);
            } else {
                System.out.println("password is error");
            }
        }



    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
