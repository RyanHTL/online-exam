package com.exam.controller;

import com.exam.demain.Student;
import com.exam.services.LoginServices;
import com.exam.util.CodeUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 海神阁
 */
@Controller
@RequestMapping("/loginController")
public class LoginController {

    @Autowired
    LoginServices loginServices;


    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @ResponseBody
    @RequestMapping(value = "/checklogin",method= RequestMethod.POST)//
    public Map<String,Object> checklogin(String loginname, String password, String verifyCodeActual,HttpServletRequest request) {
        //String loginname = request.getParameter("loginname");
        //String password = request.getParameter("password");
        //String verifyCodeActual=request.getParameter("verifyCodeActual");
        System.out.println("UserInput==" + loginname + "-" + password+"-"+verifyCodeActual);
        Map<String,Object> modelMap= new HashMap<>();

        if(!CodeUtil.checkVerifyCode(verifyCodeActual,request)){
            modelMap.put("success", false);
            modelMap.put("errMsg", "输入了错误的验证码");
        }else {
            Student student = loginServices.checkUser(loginname, password);
            if (student != null) {
                modelMap.put("success", true);
                modelMap.put("errMsg", "登录成功");
            } else {
                modelMap.put("success", false);
                modelMap.put("errMsg", "账户或者密码错误！");
            }
        }

        return modelMap;
    }

    //@ResponseBody
    //@RequestMapping(value = "/checklogin",method= RequestMethod.POST)//
    //public Map<String,Object> checklogin(String loginname, String password, String verifyCodeActual) {
    //
    //    System.out.println("UserInput==" + loginname + "-" + password+"-"+verifyCodeActual);
    //    Map<String,Object> modelMap= new HashMap<>();
    //
    //
    //        Student student = loginServices.checkUser(loginname, password);
    //        if (student != null) {
    //            modelMap.put("success", true);
    //            modelMap.put("errMsg", "登录成功");
    //        } else {
    //            modelMap.put("success", false);
    //            modelMap.put("errMsg", "账户或者密码错误！");
    //        }
    //
    //
    //    return modelMap;
    //}

}
