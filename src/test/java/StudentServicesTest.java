import com.alibaba.fastjson.JSONArray;import com.alibaba.fastjson.JSONObject;import com.exam.demain.Paper;import com.exam.demain.Student;import com.exam.services.LoginServices;import com.exam.services.ParperServices;import org.junit.Test;import org.springframework.context.ApplicationContext;import org.springframework.context.support.ClassPathXmlApplicationContext;import java.util.Map;public class StudentServicesTest {    @Test    public void checkLogin() {        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");        LoginServices services = (LoginServices) context.getBean("loginServices");        Student student = services.checkUser("111114", "111111");        System.out.println(student.toString());    }    @Test    public void testJSON(){        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");        ParperServices services = (ParperServices) context.getBean("parperServices");        Paper paper = services.selectPaper(1);        System.out.println(paper.toString());        //System.out.println(paper.toString());        //JSONObject object = paper.getContent();        //System.out.println(object.getString("type"));        //System.out.println(paper.getContent().getJSONArray("content").getString(1));        // 第一层        JSONObject object1 = paper.getContent().getJSONObject("data");        System.out.println(object1);        // 第2层        JSONArray object2 = object1.getJSONArray("items");        System.out.println(object2);        // 第3层        JSONObject object3 = object2.getJSONObject(0);        System.out.println(object3);        System.out.println(object3.get("id"));    }}