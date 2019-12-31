package com.exam.services;

import com.exam.demain.Paper;
import com.exam.demain.Question;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface StudentServices {

    // 查询学生的所有考试试卷
    List<Paper> selectAllPaperByClassid(int classid);

    // 提交试卷
    int submitParper(int studentid,int paperid,ArrayList<String> answers,String time);

    // 查询试卷（考试结果）
    Paper selectMyPaper(int stuid, int paperid);

    // 获取单元测试题
    List<Question> selectUnitTestQuestions(String type);


}
