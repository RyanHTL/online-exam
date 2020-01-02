package com.exam.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.exam.demain.*;
import com.exam.services.TeacherServices;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/teacherController")
public class TeacherController {

    @Autowired
    TeacherServices teacherServices;

    /**
     *
     * @param id 老师id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "selectclazzAllPaper", method = RequestMethod.POST)
    public ArrayList<ResultPaper> selectclazzAllPaper( Integer id){
        ArrayList<ResultPaper> papers = teacherServices.selectAllClazzResultPaper(id);
        return papers;
    }

    /**
     *
     * @param id 老师id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "selectAllPaper", method = RequestMethod.POST)
    public ArrayList<Paper> selectAllPaper( Integer id){
        ArrayList<Paper> papers = teacherServices.selectAllPaper(id);
        return papers;
    }

    @ResponseBody
    @RequestMapping(value = "addPaper", method = RequestMethod.POST)
    public Integer addPaper(int single,int multiple,String title,int courseid,int teacherid,int classid,int createuser,int singlescore,int multiplescore,String keeptime){
        System.out.println("paperInfo=>"+single+" "+multiple+" "+title+" "+courseid+" "+teacherid+" "+classid+" "+createuser+" "+singlescore+" "+multiplescore+" "+keeptime);
        Map<Integer, Test> a;
        do {
            a = teacherServices.findResultByRule(single, multiple);
        }while ( a.size()!=(single+multiple));
        List<String> singe =new ArrayList<>();
        List<String> mtl =new ArrayList<>();
        for(Map.Entry<Integer, com.exam.demain.Test> ww:a.entrySet()){
            String abc=ww.getValue().getAnwser();

            if(abc.length()>1){
                mtl.add(ww.getValue().toJsonString2());
            }
            else {
                singe.add(ww.getValue().toJsonString2());
            }
        }

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date()));
        //String str1 = JSON.toJSONString(singe);
        //String str2 = JSON.toJSONString(mtl);
        String str3 = "{\"content\": {\"single\": "+singe.toString()+",\"multiple\":"+mtl.toString()+"}}";
        System.out.println(str3);
        JSONObject content = JSONObject.parseObject(str3);
        TestPaper testPaper = new TestPaper();
        testPaper.setTitle(title);
        testPaper.setContent(content.toJSONString());
        testPaper.setCourseid(courseid);
        testPaper.setCreateuser(createuser);
        testPaper.setStatus(1);
        testPaper.setSinglescore(singlescore);
        testPaper.setMultiplescore(multiplescore);
        teacherServices.addParper(testPaper);
        int i = teacherServices.addParperToStatus(teacherid, courseid, testPaper.getId(), classid, 1, df.format(new Date()), "2019-12-28 01:58:09", keeptime);
        return i;
    }

    @ResponseBody
    @RequestMapping(value = "/selectAllStudents",method = RequestMethod.POST)
    public ArrayList<Student> selectAllStudents(Integer t_id, Model model) {
        System.out.println("selectQuestions.paperid=>"+t_id);
        ArrayList<Student> student;
        student=teacherServices.selectAllStudents(t_id);
        model.addAttribute("student",student);

        return student;

    }
    @ResponseBody
    @RequestMapping(value = "/saveQuestions",method = RequestMethod.POST )
    public Integer saveQuestions(HttpServletRequest request) {
        String data = request.getParameter("data");
        //System.out.println("saveQuestion.questionList=>"+data);
        JSONArray objects =  JSONArray.parseArray(data);
        ArrayList<Test> tests = new ArrayList<>();
        for (int i =0;i<objects.size();i++){
            JSONObject o = objects.getJSONObject(i);
            Test t =new Test();
            t.setTitle(o.getString("title"));
            t.setAnwser(o.getString("anwser"));
            t.setType(Integer.parseInt( o.getString("type")));
            t.setCourseid(Integer.parseInt( o.getString("courseid")));
            t.setSelectA(o.getString("selectA"));
            t.setSelectB(o.getString("selectB"));
            t.setSelectC(o.getString("selectC"));
            t.setSelectD(o.getString("selectD"));
            t.setSelectE(o.getString("selectE"));
            tests.add(t);
            //System.out.println(t.toString());
        }
        System.out.println(tests);
        int i = teacherServices.addQuestions(tests);

        return i;

    }

    @ResponseBody
    @RequestMapping(value = "/saveStudent", method = RequestMethod.POST)
    public Integer saveStudent(Integer id, String account, String name, String className, String age, String phone,String sex ){
        List<Object> list=new ArrayList<Object>();
        list.add(id);
        list.add(account);
        list.add(name);
        list.add(className);
        list.add(age);
        list.add(phone);
        list.add(sex);
        System.out.println(list);
        int save=teacherServices.updateSutdentInfo(list);
        System.out.println(save);
        return save;

    }

    @ResponseBody
    @RequestMapping(value = "/deleteStudent", method = RequestMethod.POST)
    public boolean deleteStudent(Integer id ){
        boolean del=teacherServices.deleteStudent(id);
        System.out.println(del);
        return del;
    }

    @ResponseBody
    @RequestMapping(value = "/selectAllTest", method = RequestMethod.POST)
    public List<Test> selectAllTest(){
        List<Test> test;
        test=teacherServices.selectAllTest();
        return test;
    }

    @ResponseBody
    @RequestMapping(value = "/updateAllTest", method = RequestMethod.POST)
    public Integer updateAllTest(Integer id,String title,String a,String b,String c,String d,String e ,String answer){
        List<Object> list_x=new ArrayList<Object>();
        list_x.add(id);
        list_x.add(title);
        list_x.add(a);
        list_x.add(b);
        list_x.add(c);
        list_x.add(d);
        list_x.add(e);
        list_x.add(answer);
        System.out.println(list_x);
        int up=teacherServices.updateAllTest(list_x);
        System.out.println(up);
        return up;

    }

    @ResponseBody
    @RequestMapping(value = "/deleteTest", method = RequestMethod.POST)
    public boolean deleteTest(Integer id ){
        boolean del=teacherServices.deleteTest(id);
        System.out.println(del);
        return del;
    }

    @ResponseBody
    @RequestMapping(value = "/insertTest", method = RequestMethod.POST)
    public int insertTest(String title,Integer id,String a,String b,String c,String d,String e ,String answer,Integer type) {
        List<Object> list_x = new ArrayList<Object>();
        list_x.add(id);
        list_x.add(title);
        list_x.add(a);
        list_x.add(b);
        list_x.add(c);
        list_x.add(d);
        list_x.add(e);
        list_x.add(answer);
        list_x.add(type);
        System.out.println(list_x);
        int in = teacherServices.insertTest(list_x);
        System.out.println(in);
        return in;

    }

    @ResponseBody
    @RequestMapping(value = "/insertUser", method = RequestMethod.POST)
    public int insertUser(String account,String name,String password,Integer age,String sex,Integer classid,String phone,Integer role) {
        List<Object> list_u = new ArrayList<Object>();
        list_u.add(account);
        list_u.add(name);
        list_u.add(password);
        list_u.add(age);
        list_u.add(sex);
        list_u.add(classid);
        list_u.add(role);
        list_u.add(phone);
        System.out.println(list_u);
        int in = teacherServices.insertUser(list_u);
        System.out.println(in);
        return in;

    }

}
