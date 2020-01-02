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

    // 修改学生信息
    int updateSutdentInfo(Student student);

    // 添加题库
    int addQuestions(@Param("list") ArrayList<Test> questionArrayList);

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
    ArrayList<ResultPaper> selectAllClazzResultPaper(int teacherid);

    ArrayList<Paper> selectAllPaper(Integer teacherid);

    // 查询所有学生 --老师id
    ArrayList<Student> selectAllStudents(int teacherid);
    // 查询所有题
    List<Test> selectAllTest();

    // 查看学生信息
    Student selectStudentInfoByid(int studentid);
    //删除学生信息
    //by zjj
    boolean deleteStudent(int id);
    //删除学生信息
    //by zjj
    boolean deleteTest(int id);
    // 修改学生信息
    //by zjj
    int updateSutdentInfo(List list);
    // 修改题
    //by zjj
    int updateAllTest(List list);
    // 添加题
    //by zjj
    int insertTest(List list);
    // 添加用户
    //by zjj
    int insertUser(List list);
}
