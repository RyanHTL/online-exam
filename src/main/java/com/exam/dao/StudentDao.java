package com.exam.dao;

import com.exam.demain.Paper;
import com.exam.demain.Question;
import com.exam.demain.ResultPaper;
import com.exam.demain.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentDao {

    Student checkUser(@Param("account") String account, @Param("password") String password);

    // 查询学生的所有考试试卷
    List<Paper> selectAllPaperByClassid(int classid);

    // 查询试卷（考试结果）
    List<ResultPaper> selectMyResultPaper(int studentid);

    // 获取单元测试题
    List<Question> selectUnitTestQuestions(String type);

    // 插入提交信息
    int insetsubmitinfo(@Param("content") String content,
                        @Param("grade") int grade,
                        @Param("studentid") int studentid,
                        @Param("paperid") int paperid,
                        @Param("submittime") String submittime);

    int updatePaperStatusToStop(@Param("paperid") int paperid);


    ResultPaper selectMySubPaperBypaperid(int paperid);

    Integer updateUserInfo(@Param("student")Student student);

    Student selectUserByid(int id);
}
