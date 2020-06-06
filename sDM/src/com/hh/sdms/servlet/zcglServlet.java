package com.hh.sdms.servlet;

import com.hh.sdms.dao.StudentDao;
import com.hh.sdms.domain.Student;



import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class zcglServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  {
        Student stu = new Student();
        StudentDao stdd = new StudentDao();
        stu.setSno(request.getParameter("na"));
        stu.setSno(request.getParameter("sno"));
        stu.setDno(request.getParameter("ddo"));
        stu.setPho(request.getParameter("sph"));
        stu.setPsd(request.getParameter("sno"));
        stdd.addStudent(stu);
        request.getRequestDispatcher("/jsp/loginsuccess.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException {

    }
}
