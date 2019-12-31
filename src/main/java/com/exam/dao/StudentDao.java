package com.exam.dao;

import com.exam.demain.Paper;
import com.exam.demain.Question;
import com.exam.demain.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentDao {

    Student checkUser(@Param("account") String account, @Param("password") String password);

    // 查询学生的所有考试试卷
    List<Paper> selectAllPaperByStuid(int studentid);

    // 查询试卷（考试结果）
    Paper selectMyResultPaper(int paperid);

    // 获取单元测试题
    List<Question> selectUnitTestQuestions(String type);
}
