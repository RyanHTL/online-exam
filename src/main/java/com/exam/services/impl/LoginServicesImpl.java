package com.exam.services.impl;

import com.exam.dao.LoginDao;
import com.exam.demain.Student;
import com.exam.services.LoginServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author 海神阁
 */
@Service("loginServices")
public class LoginServicesImpl implements LoginServices {

    @Resource
    LoginDao dao;

    @Override
    public Student checkUser(String account, String password) {
        return dao.checkUser(account,password);
    }
}
