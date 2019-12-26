package com.exam.demain;

import org.springframework.context.annotation.Bean;


public class Student {
    private Integer id;
    private String account; //账号
    private String studentName; //名字
    private String password;
    private Integer age;
    private String sex;
    private Integer classid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getClassid() {
        return classid;
    }

    public void setClassid(Integer classid) {
        this.classid = classid;
    }


    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", studentName='" + studentName + '\'' +
                ", password='" + password + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", classid=" + classid +
                '}';
    }
}
