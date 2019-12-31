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


    /**
     * 获取试卷
     * @param id
     * @return
     */
    @Override
    public Paper selectPaper(int id) {
        return dao.selectPaper(id);
    }

    /**
     * 获取试题
     * @param paperid  试卷id
     * @return ArrayList<Question>
     */
    @Override
    public ArrayList<Question> getQuestions(@Param("id") Integer paperid) {
        ParperUtil util = new ParperUtil();
        Paper paper = dao.selectPaper(paperid);
        ArrayList<Question> question1;
        ArrayList<Question> question2;
        // 选择需要解析什么样的(单选“single”，多选“multiple”)
        String type1 = "single";
        question1 = util.questionsByType(paper, type1,paper.getSinglescore());

        String type2 = "multiple";
        question2 = util.questionsByType(paper, type2,paper.getMultiplescore());
        question1.addAll(question2);
        return question1;
    }

    /**
     * 根据试卷id获取答案
     * @param paperid 试卷id
     * @return ArrayList<String>
     */
    @Override
    public ArrayList<String> getAnswersToParper(Integer paperid) {
        ParperUtil util = new ParperUtil();
        Paper paper = dao.selectPaper(paperid);
        ArrayList<String> answers1;
        ArrayList<String> answers2;
        // 选择需要解析什么样的(单选“single”，多选“multiple”)
        String type1 = "single";
        answers1 = util.answersBytype(paper,type1);
        String type2 = "multiple";
        answers2 = util.answersBytype(paper,type2);
        //question1.addAll(question2);
        answers1.addAll(answers2);
        return answers1;
    }

    @Override
    public ArrayList<Question> getQuestionsAndAnswers(Integer paperid) {
        Paper paper = dao.selectPaper(paperid);
        ParperUtil util = new ParperUtil();
        ArrayList<Question> question1;
        ArrayList<Question> question2;
        String type1 = "single";
        question1 = util.getQuestionsAndAnswers(paper, type1,paper.getSinglescore());
        String type2 = "multiple";
        question2 = util.getQuestionsAndAnswers(paper, type2,paper.getMultiplescore());
        question1.addAll(question2);
        return question1;
    }

}
