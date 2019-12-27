package com.exam.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.exam.demain.Paper;
import com.exam.demain.Question;
import com.exam.services.ParperServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/studentController")
public class StudentController {

    @Autowired
    ParperServices services;


    @ResponseBody
    @RequestMapping(value = "/selectparper",method = RequestMethod.POST)
    public ArrayList<Question> selectparper(Integer id){
        //Paper paper = services.selectPaper(id);
        ArrayList<Question> questions;
        questions = services.questions(id);
        return questions;
    }



}
