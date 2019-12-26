package com.exam.util;

import javax.servlet.http.HttpServletRequest;
/**
 * 检查验证码是否和预期相符
 *
 */
public class CodeUtil {
    /**
     * 检查验证码是否和预期相符
     *
     * @param request
     * @return
     */
    public static boolean checkVerifyCode(String verifyCodeActual,HttpServletRequest request) {
        String verifyCodeExpected = (String) request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
        System.out.println("verifyCodeExpected="+verifyCodeExpected);
        //String verifyCodeActual =  request.getParameter("verifyCodeActual");
        System.out.println("verifyCodeActual="+verifyCodeActual);
        if (verifyCodeActual == null || !verifyCodeActual.equals(verifyCodeExpected)) {
            return false;
        }
        return true;
    }

}
