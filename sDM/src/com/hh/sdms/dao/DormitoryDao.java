package com.hh.sdms.dao;

import com.hh.sdms.domain.Dormitory;
import com.hh.sdms.utils.JdbcConn;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DormitoryDao {
        JdbcConn jdc = new JdbcConn();
        ResultSet rst = null;

        public void addDomitory(Dormitory dor) {

            jdc.init();
            jdc.addUpdDel("insert into domitory values ('" + dor.getDno() + "','" + dor.getGrade()  +"');");
            jdc.close();
        }

        public void delStudentByDno(String dno) {
            jdc.init();
            jdc.addUpdDel("delete from domitory where dno ='" + dno + "';");
            jdc.close();
        }

        public void updStuentByDno(Dormitory dor, String dno) {
            jdc.init();
            jdc.addUpdDel("update domitory set dno ='" + dor.getDno() + "',dgr='" + dor.getGrade() + "' where dno = '" + dno + "';");
            jdc.close();
        }

        public Dormitory sleSDormitoryByDno(String dno) {
            Dormitory dor =new Dormitory();

            jdc.init();

            rst = jdc.selectSql("select * from domitory where dno='" + dno + "';");
            try {
                while (rst.next()) {
                    dor.setDno(rst.getString("dno"));
                   dor.setGrade(rst.getInt("dgr"));
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

            return dor;
        }


    }