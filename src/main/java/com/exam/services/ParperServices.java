package com.exam.services;

import com.exam.demain.Paper;
import com.exam.demain.Question;

import java.util.ArrayList;

public interface ParperServices {

    Paper selectPaper(int id);

    ArrayList<Question> getQuestions(Integer paperid);

    ArrayList<String> getAnswersToParper(Integer paperid);

}
