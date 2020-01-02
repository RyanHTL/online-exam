package com.exam.services;

import com.exam.demain.*;
import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface TeacherServices {

    // 修改个人信息
    int updateTeacherInfo(Teacher teacher);

    // 查看学生信息
    Student selectStudentInfoByid(int studentid);

    // 修改学生信息
    int updateSutdentInfo(Student student);

    // 添加题库
    int addQuestions(ArrayList<Test> questionArrayList);

    // 按规则取题
    @MapKey("id")
    Map<Integer,Test> findResultByRule(int single, int multiple);

    // 添加试卷
    int addParper(TestPaper testPaper);


    int addParperToStatus(int teacherid,int coursed, int testid,int classid,int status,String starttime, String endtime,String keeptime);

    // 查询所有题库
    List<Question> selectAllQuestions(int createUserid);

    // 修改题库中指定的考题
    int updateQuestion(int questionid);

    // 查询老师所有班级考试结果
    ArrayList<ResultPaper> selectAllClazzResultPaper(int teacherid);


    ArrayList<Paper> selectAllPaper(Integer teacherid);

    // 查询所有学生 老师id
    ArrayList<Student> selectAllStudents(int teacherid);
    //删除学生信息
    //by zjj
    boolean deleteStudent(int id);
    //删除题
    //by zjj
    boolean deleteTest(int id);
    // 修改学生信息
    //by zjj
    int updateSutdentInfo(List list);
    // 查询所有题
    List<Test> selectAllTest();
    //修改考题
    int updateAllTest(List list);
    //添加考题
    int insertTest(List list);
    //添加用户
    int insertUser(List list);


}
