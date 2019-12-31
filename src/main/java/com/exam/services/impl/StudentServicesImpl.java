package com.exam.services.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
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
    public List<Paper> selectAllPaperByClassid(int classid) {
        return dao.selectAllPaperByClassid(classid);
    }


    @Override
    public int submitParper(int studentid,int paperid,ArrayList<String> answers,String time) {
        System.out.println("get submitParper=>"+studentid+" "+paperid+" "+answers);
        int score = 0;
        if (studentid!=0 || paperid!=0 || answers!= null){
            ArrayList<Question> rightanswers = parperServices.getQuestionsAndAnswers(paperid);
            int i = 0;
            JSONObject ans = new JSONObject();
            for (Question q: rightanswers
            ) {
                System.out.println("rightScore=>>"+q.getAnswerstring()+" "+answers.get(i));
                if (answers.get(i).equals(q.getAnswerstring()) ){
                    score += q.getScore();
                }
                // 添加答案到JSON数据中
                ans.put(String.valueOf(i+1),answers.get(i));
                i++;
            }
            System.out.println(ans);
            String answer = ans.toJSONString();
            dao.insetsubmitinfo(answer, score, studentid, paperid, time);
            // 修改试卷状态到0（不能考试）
            //dao.updatePaperStatusToStop(paperid);
        }



        return score;
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
