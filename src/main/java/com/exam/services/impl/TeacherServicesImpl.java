package com.exam.services.impl;

import com.exam.dao.TeacherDao;
import com.exam.demain.*;
import com.exam.services.TeacherServices;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("teacherServices")
@Transactional(readOnly = false)
public class TeacherServicesImpl implements TeacherServices {

    @Autowired
    TeacherDao dao;


    @Override
    public int updateTeacherInfo(Teacher teacher) {
        return 0;
    }

    @Override
    public List<Student> selectAllStudents(int teacherid) {
        return null;
    }

    @Override
    public Student selectStudentInfoByid(int  studentid) {
        return null;
    }

    @Override
    public int updateSutdentInfo(Student student) {
        return 0;
    }

    @Override
    public int addQuestions(ArrayList<Question> questionArrayList) {
        return 0;
    }

    @Override
    public Map<Integer, Test> findResultByRule(int single, int multiple) {
        return dao.findResultByRule(single,multiple);
    }

    @Override
    public int addParper(TestPaper testPaper) {
        return dao.addParper(testPaper);
    }

    @Override
    public int addParperToStatus(int teacherid,int coursed, int testid,int classid,int status,String starttime, String endtime,String keeptime) {
        return dao.addParperToStatus(teacherid,coursed,testid,classid,status,starttime,endtime,keeptime);
    }


    @Override
    public List<Question> selectAllQuestions(int createUserid) {
        return null;
    }

    @Override
    public int updateQuestion(int questionid) {
        return 0;
    }

    @Override
    public List<ResultPaper> selectAllClazzResultPaper(int clazzid) {
        return null;
    }
}
