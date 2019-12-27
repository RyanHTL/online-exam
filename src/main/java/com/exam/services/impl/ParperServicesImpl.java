package com.exam.services.impl;

import com.exam.dao.PaperDao;
import com.exam.demain.Paper;
import com.exam.services.ParperServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("parperServices")
public class ParperServicesImpl implements ParperServices {

    @Autowired
    PaperDao dao;

    @Override
    public Paper selectPaper(int id) {
        return dao.selectPaper(id);
    }
}
