package com.exam.demain;

import com.alibaba.fastjson.JSONObject;

public class Paper {
    private Integer id;
    private String title;
    private JSONObject content;
    private Integer createuser;
    private String createusername;
    private Integer classid; //考试班级
    private String className; //考试班级
    private String course; //考试班级
    private Integer singlescore;
    private Integer multiplescore;
    private String startTime; //生成时间
    private String endTime; // 结束时间
    private Integer keepTime; // 持续时间


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

    public Integer getCreateuser() {
        return createuser;
    }

    public void setCreateuser(Integer createuser) {
        this.createuser = createuser;
    }

    public String getCreateusername() {
        return createusername;
    }

    public void setCreateusername(String createusername) {
        this.createusername = createusername;
    }

    public Integer getClassid() {
        return classid;
    }

    public void setClassid(Integer classid) {
        this.classid = classid;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public Integer getSinglescore() {
        return singlescore;
    }

    public void setSinglescore(Integer singlescore) {
        this.singlescore = singlescore;
    }

    public Integer getMultiplescore() {
        return multiplescore;
    }

    public void setMultiplescore(Integer multiplescore) {
        this.multiplescore = multiplescore;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Integer getKeepTime() {
        return keepTime;
    }

    public void setKeepTime(Integer keepTime) {
        this.keepTime = keepTime;
    }

    @Override
    public String toString() {
        return "Paper{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content=" + content +
                ", createuser=" + createuser +
                ", createusername='" + createusername + '\'' +
                ", classid=" + classid +
                ", className='" + className + '\'' +
                ", course='" + course + '\'' +
                ", singlescore=" + singlescore +
                ", multiplescore=" + multiplescore +
                ", startTime='" + startTime + '\'' +
                ", endTime='" + endTime + '\'' +
                ", keepTime=" + keepTime +
                '}';
    }
}
