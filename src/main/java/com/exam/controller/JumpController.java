package com.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 跳转控制
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

    @RequestMapping(value = "/index_v1")
    public String index_v1(){
        return "index_v1";
    }

    @RequestMapping(value = "/studentonlinetest")
    public String studentonlinetest(){
        return "studentonlinetest";
    }

    @RequestMapping(value = "/testing")
    public String testing(){
        return "testing";
    }
}
