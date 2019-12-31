package com.exam.dao;

import com.exam.demain.*;
import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface TeacherDao {

    // 修改个人信息
    int updateTeacherInfo(Teacher teacher);

    // 查询所有学生 --老师id
    List<Student> selectAllStudents(int teacherid);

    // 查看学生信息
    Student selectStudentInfoByid(int studentid);

    // 修改学生信息
    int updateSutdentInfo(Student student);

    // 添加题库
    int addQuestions(ArrayList<Question> questionArrayList);

    //
    @MapKey("id")
    Map<Integer,Test> findResultByRule(@Param("single") int single, @Param("multiple") int multiple);

    // 添加试卷
    int addParper(@Param("testPaper")TestPaper testPaper);

    int addParperToStatus(
            @Param("teacherid") int teacherid,
            @Param("coursed")int coursed,
            @Param("testid")int testid,
            @Param("classid")int classid,
            @Param("status") int status,
            @Param("starttime") String starttime,
            @Param("endtime") String endtime,
            @Param("keeptime") String keeptime
            );

    // 查询所有题库
    List<Question> selectAllQuestions(int createUserid);

    // 修改题库中指定的考题
    int updateQuestion(int questionid);

    // 查询整个班级考试结果
    List<ResultPaper> selectAllClazzResultPaper(int clazzid);

}
