package com.exam.demain;

import com.alibaba.fastjson.JSONObject;
import org.json.simple.JSONArray;


public class Student extends User{
    private Integer classid;
    private String className;
    private String phone;

    public Integer getClassid() {
        return classid;
    }

    public void setClassid(Integer classid) {
        this.classid = classid;
    }

    public String getPhone() {
        return phone;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Student{" +
                "classid=" + classid +
                ", className='" + className + '\'' +
                ", phone='" + phone + '\'' +
                ", id=" + id +
                ", account='" + account + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", role=" + role +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                '}';
    }
}
