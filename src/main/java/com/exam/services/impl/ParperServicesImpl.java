package com.exam.services.impl;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import com.exam.dao.PaperDao;
import com.exam.demain.Paper;
import com.exam.demain.Question;
import com.exam.services.ParperServices;
import com.exam.util.ParperUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service("parperServices")
public class ParperServicesImpl implements ParperServices {

    @Autowired
    PaperDao dao;


    @Override
    public Paper selectPaper(int id) {
        return dao.selectPaper(id);
    }

    @Override
    public ArrayList<Question> questions(@Param("id") Integer paperid) {
        ParperUtil util = new ParperUtil();
        Paper paper = dao.selectPaper(paperid);
        ArrayList<Question> question1;
        ArrayList<Question> question2;
        ArrayList<Question> questions = new ArrayList<>();
        // 选择需要解析什么样的(单选“single”，多选“multiple”)
        String type1 = "single";
        question1 = util.allQuestions(paper, type1);
        String type2 = "multiple";
        question2 = util.allQuestions(paper, type2);
        question1.addAll(question2);
        return question1;
    }
}
