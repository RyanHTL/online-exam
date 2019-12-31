import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.exam.demain.TestPaper;
import com.exam.services.TeacherServices;
import org.apache.commons.lang3.StringEscapeUtils;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TeacherServicesTest {

    // 创建试卷
    @Test
    public void createPaper() {
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        TeacherServices services = (TeacherServices) context.getBean("teacherServices");
        int single = 5;
        int multiple = 5;
        Map<Integer, com.exam.demain.Test> a;
        do {
            a = services.findResultByRule(single, multiple);
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


        String str1 = JSON.toJSONString(singe);

        String str2 = JSON.toJSONString(mtl);
        String str3 = "{\"content\": {\"single\": "+singe.toString()+",\"multiple\":"+mtl.toString()+"}}";
        System.out.println(str3);
        JSONObject content = JSONObject.parseObject(str3);
        TestPaper testPaper = new TestPaper();
        testPaper.setContent(content.toJSONString());
        testPaper.setCourseid(1351556);
        testPaper.setCreateuser(13215);
        testPaper.setStatus(1);
        services.addParper(testPaper);
        System.out.println(testPaper.getId());

    }

    @Test
    public void test(){
        String str1 = "{\"resourceId\":\"dfead70e4ec5c11e43514000ced0cdcaf\",\"properties\":{\"process_id\":\"process4\",\"name\":\"\",\"documentation\":\"\",\"processformtemplate\":\"\"}}";
        String tmp = StringEscapeUtils.unescapeEcmaScript(str1);
        System.out.println("tmp:" + tmp);
    }

}
