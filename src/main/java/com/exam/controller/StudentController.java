package com.exam.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.exam.demain.Paper;
import com.exam.demain.Question;
import com.exam.services.ParperServices;
import com.exam.services.StudentServices;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Array;
import java.util.*;

@Controller
@RequestMapping("/studentController")
public class StudentController {

    @Autowired
    ParperServices services;

    @Autowired
    StudentServices studentServices;

    @ResponseBody
    @RequestMapping(value = "/selectQuestions",method = RequestMethod.POST)
    public ArrayList<Question> selectQuestions(@Param("id") Integer id, Model model){
        //Paper paper = services.selectPaper(id);
        System.out.println("selectQuestions.paperid=>"+id);
        ArrayList<Question> questions;
        questions = services.getQuestions(id);
        model.addAttribute("questions",questions);
        return questions;
    }


    @ResponseBody
    @RequestMapping(value = "submitanswer", method = RequestMethod.POST)
    public int submitanswer(@RequestBody JSONObject answers) {
        int studentid = Integer.parseInt(answers.getString("studentid"));
        int paperid = Integer.parseInt(answers.getString("paperid"));
        System.out.println("试卷提交信息id=>" + studentid + " " + paperid);
        answers.remove("studentid");
        answers.remove("paperid");
        System.out.println(answers);
        ArrayList<String> useranswer = new ArrayList<>();
        //解析json数据
        Iterator iter2 = answers.entrySet().iterator();
        while (iter2.hasNext()) {
            Map.Entry entry = (Map.Entry) iter2.next();
            useranswer.add(entry.getValue().toString());
            System.out.println("answers--" + entry.getValue().toString());
        }
        System.out.println(useranswer);
        int score = 0;

        String time = "2019-12-28 01:58:09";
        score = studentServices.submitParper(studentid,paperid,useranswer,time);


        System.out.println("lastScore=>>" + score);
        return score;
    }


    @ResponseBody
    @RequestMapping(value = "selectPaper", method = RequestMethod.POST)
    public List<Paper> selectPaper(@Param("id") Integer id){
        List<Paper> papers = studentServices.selectAllPaperByClassid(id);
        return papers;

    }

}
