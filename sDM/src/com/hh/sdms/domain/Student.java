package com.hh.sdms.domain;

public class Student {
    private String sno;
    private String sname;
    private String psd;
    private String dno;
    private String pho;

    public String getPho() {
        return pho;
    }

    public void setPho(String pho) {
        this.pho = pho;
    }

    public String getDno() {
        return dno;
    }

    public void setDno(String dno) {
        this.dno = dno;
    }


    public String getPsd() {
        return psd;
    }

    public void setPsd(String psd) {
        this.psd = psd;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }
    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }


    @Override
    public String toString() {
        return "学号" + sno +"  "+
                "姓名" + sname + "  "+
                "寝室号" + dno + "  " +
                "电话号码" + pho +"  ";
    }
}
