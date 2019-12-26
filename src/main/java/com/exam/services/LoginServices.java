package com.exam.services;

import com.exam.demain.Student;

public interface LoginServices {
    Student checkUser(String account, String password);

}
