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
    public Student selectStudentInfoByid(int studentid) {
        return null;
    }

    @Override
    public int updateSutdentInfo(Student student) {
        return 0;
    }

    @Override
    public int addQuestions(ArrayList<Test> questionArrayList) {
        return dao.addQuestions(questionArrayList);
    }

    @Override
    public Map<Integer, Test> findResultByRule(int single, int multiple) {
        return dao.findResultByRule(single, multiple);
    }

    @Override
    public int addParper(TestPaper testPaper) {
        return dao.addParper(testPaper);
    }

    @Override
    public int addParperToStatus(int teacherid, int coursed, int testid, int classid, int status, String starttime, String endtime, String keeptime) {
        System.out.println("paperInfo2=>" + coursed + " " + testid + " " + teacherid + " " + classid + " " + status + " " + starttime + " " + endtime + " " + keeptime);
        return dao.addParperToStatus(teacherid, coursed, testid, classid, status, starttime, endtime, keeptime);
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
    public ArrayList<ResultPaper> selectAllClazzResultPaper(int teacherid) {
        return dao.selectAllClazzResultPaper(teacherid);
    }

    @Override
    public ArrayList<Paper> selectAllPaper(Integer teacherid) {
        return dao.selectAllPaper(teacherid);
    }

    @Override
    //by zjj 修改学生信息
    public int updateSutdentInfo(List list) {
        return dao.updateSutdentInfo(list);
    }

    @Override
    //by zjj 删除学生信息
    public boolean deleteStudent(int id) {
        return dao.deleteStudent(id);
    }

    @Override
    //by zjj 修改题
    public int updateAllTest(List list) {
        return dao.updateAllTest(list);
    }

    @Override
    //by zjj 添加题
    public int insertTest(List list) {
        return dao.insertTest(list);
    }

    @Override
    //by zjj 添加用户
    public int insertUser(List list) {
        return dao.insertUser(list);
    }

    @Override
    //by zjj 删除学生信息
    public boolean deleteTest(int id) {
        return dao.deleteTest(id);
    }

    @Override
    // 查询所有题
    public List<Test> selectAllTest() {
        return dao.selectAllTest();
    }

    @Override
    public ArrayList<Student> selectAllStudents(int teacherid) {
        return dao.selectAllStudents(teacherid);
    }
}
