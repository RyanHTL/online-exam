package com.exam.demain;

import com.alibaba.fastjson.JSONObject;
import org.json.simple.JSONArray;


public class Student extends User{
    private Integer classid;
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

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Student{" +
                "classid=" + classid +
                ", phone=" + phone +
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
