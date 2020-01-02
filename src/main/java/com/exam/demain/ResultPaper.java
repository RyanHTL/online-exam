package com.exam.demain;

import com.alibaba.fastjson.JSONObject;

public class ResultPaper {
    private Integer id;
    private String title; // 试卷title
    private JSONObject content; //答题内容
    private Integer score;
    private String name; // 课程名
    private String submittime; // 提价时间
    private String studentname; // 学生姓名

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public JSONObject getContent() {
        return content;
    }

    public void setContent(JSONObject content) {
        this.content = content;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubmittime() {
        return submittime;
    }

    public void setSubmittime(String submittime) {
        this.submittime = submittime;
    }

    public String getStudentname() {
        return studentname;
    }

    public void setStudentname(String studentname) {
        this.studentname = studentname;
    }

    @Override
    public String toString() {
        return "ResultPaper{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content=" + content +
                ", score=" + score +
                ", name='" + name + '\'' +
                ", submittime='" + submittime + '\'' +
                ", studentname='" + studentname + '\'' +
                '}';
    }
}

