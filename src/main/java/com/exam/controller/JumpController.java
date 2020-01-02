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
    public ModelAndView testing(Integer id , String title,String time){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("paper", id);
        modelAndView.addObject("title", title);
        modelAndView.addObject("keeptime", time);
        System.out.println(time);
        modelAndView.setViewName("testing");
        return modelAndView;
    }
    @RequestMapping(value = "/testresult")
    public String  testresult(Integer id ){
        return "testresultlist";
    }
    @RequestMapping(value = "/testingresult")
    public ModelAndView  testingresult(Integer id , String title ){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("id", id);
        modelAndView.addObject("title", title);
        modelAndView.setViewName("testing_result");
        return modelAndView;
    }

    @RequestMapping(value = "/testshow")
    public ModelAndView  testingshow(Integer id , String title ){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("id", id);
        modelAndView.addObject("title", title);
        modelAndView.setViewName("test_show");
        return modelAndView;
    }

    @RequestMapping("/show")
    public String show(){
        return "show";
    }

    @RequestMapping("/empty")
    public String empty(){
        return "empty";
    }

    @RequestMapping("/testlist")
    public String testlist(){
        return "test_list";
    }
    @RequestMapping("/paperlist")
    public String paperlist(){
        return "paper_list";
    }

    @RequestMapping("/singel")
    public String singel(){
        return "singel";
    }


    @RequestMapping("/studenttable")
    public String studenttable(){
        return "studenttable";
    }
    @RequestMapping("/words")
    public String words(){
        return "words";
    }
    @RequestMapping("/single_choice")
    public String single_choice(){
        return "single_choice";
    }
    @RequestMapping("/mult_choice")
    public String mult_choice(){
        return "mult_choice";
    }
}
