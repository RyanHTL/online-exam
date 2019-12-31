package com.exam.demain;

import com.alibaba.fastjson.JSONObject;

/**
 * @author ：kj
 * @description：试卷用的类
 * @date ：2019/12/29 22:24
 */
public class TestPaper {
    private Integer id;
    private String content;
    private int courseid;
    private int createuser;
    private int classid;
    private int status;

    public String toJsonString() {
        return com.alibaba.fastjson.JSON.toJSONString(this);
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getCourseid() {
        return courseid;
    }

    public void setCourseid(int courseid) {
        this.courseid = courseid;
    }

    public int getCreateuser() {
        return createuser;
    }

    public void setCreateuser(int createuser) {
        this.createuser = createuser;
    }

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
