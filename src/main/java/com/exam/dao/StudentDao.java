package com.exam.dao;

import com.exam.demain.Student;
import org.apache.ibatis.annotations.Param;

public interface StudentDao {

    Student checkUser(@Param("account") String account, @Param("password") String password);
}
