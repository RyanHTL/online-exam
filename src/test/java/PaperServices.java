import com.exam.demain.Paper;
import com.exam.demain.Question;
import com.exam.services.ParperServices;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;

public class PaperServices {

    /**
     * 测试获取问题
     * @return ArrayList<Question>
     */
    @Test
    public void getQuestions(){
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        ParperServices services = (ParperServices) context.getBean("parperServices");

        ArrayList<Question> questions = services.getQuestions(15);
        System.out.println("questions = "+questions.toString());
    }

    /**
     * 测试获取答案
     * @return ArrayList<String>
     */
    @Test
    public void getAnswers(){
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        ParperServices services = (ParperServices) context.getBean("parperServices");

        ArrayList<String> answers = services.getAnswersToParper(15);
        System.out.println("answers="+answers.toString());
    }

    @Test
    public void getPaper(){
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        ParperServices services = (ParperServices) context.getBean("parperServices");

        Paper p = services.selectPaper(1);
        System.out.println("answers="+p.toString());
    }

}
