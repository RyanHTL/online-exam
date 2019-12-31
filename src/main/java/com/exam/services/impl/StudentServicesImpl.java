package com.exam.services.impl;

import com.exam.dao.StudentDao;
import com.exam.demain.Paper;
import com.exam.demain.Question;
import com.exam.services.ParperServices;
import com.exam.services.StudentServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("studentServices")
public class StudentServicesImpl implements StudentServices {

    @Autowired
    StudentDao dao;

    @Autowired
    ParperServices parperServices;

    @Override
    public List<Paper> selectAllPaperByStuid(int studentid) {
        return null;
    }

    @Override
    public boolean submitParper(int studentid,int paperid,ArrayList<String> answers) {
        Paper paper = parperServices.selectPaper(paperid);
        ArrayList<String> parperresult = parperServices.getAnswersToParper(paperid);

        //for (int i )
        return false;
    }

    @Override
    public Paper selectMyPaper(int stuid, int paperid) {
        return null;
    }

    @Override
    public List<Question> selectUnitTestQuestions(String type) {
        return null;
    }
}
