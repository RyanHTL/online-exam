package com.exam.demain;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ctc.wstx.util.StringUtil;
import com.sun.deploy.util.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


/**
 * @author ：kj
 * @description：试题的类
 * @date ：2019/12/28 19:39
 */
public class Test extends Course{
    private String title;
    private String selectA;
    private String selectB;
    private String selectC;
    private String selectD;
    private String selectE;
    private String anwser;
    private Integer type;
    private Integer courseid;
    public Integer getCourseid() {
        return courseid;
    }

    public void setCourseid(Integer courseid) {
        this.courseid = courseid;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSelectA() {
        return selectA;
    }

    public void setSelectA(String selectA) {
        this.selectA = selectA;
    }

    public String getSelectB() {
        return selectB;
    }

    public void setSelectB(String selectB) {
        this.selectB = selectB;
    }

    public String getSelectC() {
        return selectC;
    }

    public void setSelectC(String selectC) {
        this.selectC = selectC;
    }

    public String getSelectD() {
        return selectD;
    }

    public void setSelectD(String selectD) {
        this.selectD = selectD;
    }

    public String getSelectE() {
        return selectE;
    }

    public void setSelectE(String selectE) {
        this.selectE = selectE;
    }

    public void setAnwser(String anwser) {
        this.anwser = anwser;
    }

    public String getAnwser() {
        return anwser;
    }

    @Override
    public String toString() {
        return "Test{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", selectA='" + selectA + '\'' +
                ", selectB='" + selectB + '\'' +
                ", selectC='" + selectC + '\'' +
                ", selectD='" + selectD + '\'' +
                ", selectE='" + selectE + '\'' +
                ", anwser='" + anwser + '\'' +
                ", type=" + type +
                ", courseid=" + courseid +
                ", id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    public String toJsonString() {
        return com.alibaba.fastjson.JSON.toJSONString(this);
    }

    public String toJsonString2(){
        String str = "{'id': '%s', 'type': '%s', 'title': '%s', 'answer': %s, 'choose': {'A': '%s', 'B': '%s', 'C': '%s', 'D': '%s', 'E': '%s'}}";

        String[] strings = this.getAnwser().split(",");
        String sss ="";
        int i = 0;

        for(String a: strings){

            sss+= "'"+(i+1)+"':'"+a+"',";
            i++;
            if (i==(strings.length)){
                sss = sss.substring(0,sss.lastIndexOf(","));
            }

        }
        sss  = "{"+sss+"}";
        System.out.println("--"+sss);

        if (this.getAnwser().length()>1)System.out.println(sss);


        return String.format(str,String.valueOf(this.getId()),"abc",this.getTitle(),sss.toString(),this.getSelectA(),this.getSelectB()
                ,this.getSelectC(),this.getSelectD(),this.getSelectE());
    }
}
