package com.exam.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.exam.demain.Paper;
import com.exam.demain.Question;
import com.exam.services.ParperServices;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/studentController")
public class StudentController {

    @Autowired
    ParperServices services;


    @ResponseBody
    @RequestMapping(value = "/selectQuestions",method = RequestMethod.POST)
    public ArrayList<Question> selectQuestions(@Param("id") Integer id, Model model){
        //Paper paper = services.selectPaper(id);
        System.out.println("paperid=>"+id);
        ArrayList<Question> questions;
        questions = services.getQuestions(id);
        model.addAttribute("questions",questions);
        return questions;
    }



}
