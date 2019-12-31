package com.exam.services;

import com.exam.demain.Paper;
import com.exam.demain.Question;

import java.util.ArrayList;

public interface ParperServices {

    Paper selectPaper(int id);

    //获取指定试卷的所有问题
    ArrayList<Question> getQuestions(Integer paperid);

    // 获得指定试卷的所有答案
    ArrayList<String> getAnswersToParper(Integer paperid);



}
