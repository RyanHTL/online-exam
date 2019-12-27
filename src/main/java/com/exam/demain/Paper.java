package com.exam.demain;

import com.alibaba.fastjson.JSONObject;

public class Paper {
    private Integer id;
    private JSONObject content;
    private Integer createuser;
    private Integer stuid;

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

    public Integer getCreateuser() {
        return createuser;
    }

    public void setCreateuser(Integer createuser) {
        this.createuser = createuser;
    }

    public Integer getStuid() {
        return stuid;
    }

    public void setStuid(Integer stuid) {
        this.stuid = stuid;
    }


    @Override
    public String toString() {
        return "Paper{" +
                "id=" + id +
                ", content=" + content +
                ", createuser=" + createuser +
                ", stuid=" + stuid +
                '}';
    }
}
