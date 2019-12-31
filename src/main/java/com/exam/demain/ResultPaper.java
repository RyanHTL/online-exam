package com.exam.demain;

import com.alibaba.fastjson.JSONObject;

public class ResultPaper {
    private Integer id;
    private JSONObject content; //答题内容
    private String grade; //成绩
    private Student student; // 考生
    private Paper paper; // 试卷
    private String submittime; //提交时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public JSONObject getContent() {
        return content;
    }

    public void setContent(JSONObject content) {
        this.content = content;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Paper getPaper() {
        return paper;
    }

    public void setPaper(Paper paper) {
        this.paper = paper;
    }

    public String getSubmittime() {
        return submittime;
    }

    public void setSubmittime(String submittime) {
        this.submittime = submittime;
    }

    @Override
    public String toString() {
        return "ResultPaper{" +
                "id=" + id +
                ", content=" + content +
                ", grade='" + grade + '\'' +
                ", student=" + student +
                ", paper=" + paper +
                ", submittime='" + submittime + '\'' +
                '}';
    }
}

