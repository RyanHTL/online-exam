package com.exam.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 跳转控制，跳转页面
 */
@Controller
@RequestMapping("/jumpController")
public class JumpController {

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/student_index")
    public String index_v1(){
        return "student_index";
    }



    @RequestMapping(value = "/student_info")
    public String student_info(){
        return "student_info";
    }

    @RequestMapping(value = "/testing")
    public ModelAndView testing(Integer id ){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("paper", id);
        modelAndView.setViewName("testing");
        return modelAndView;
    }
    @RequestMapping(value = "/testresult")
    public String  testresult(Integer id ){
        return "testresultlist";
    }

    @RequestMapping("/show")
    public String show(){
        return "show";
    }

    @RequestMapping("/studenttable")
    public String studenttable(){
        return "studenttable";
    }
}
