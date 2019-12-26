import com.exam.demain.Student;
import com.exam.services.LoginServices;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class StudentServicesTest {

    @Test
    public void checkLogin() {
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        LoginServices services = (LoginServices) context.getBean("loginServices");

        Student student = services.checkUser("111111", "123456");
        System.out.println(student.toString());
    }
}
