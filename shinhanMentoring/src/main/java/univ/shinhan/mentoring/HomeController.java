package univ.shinhan.mentoring;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {	
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "example", method = RequestMethod.GET)  
		public String example(Locale locale, Model model) {          
		    return "home";                          
	}

	@RequestMapping(value = "home", method = RequestMethod.GET)  //������̼� ���� /main���� url��û�� ������ �� ��Ʈ�ѷ��� �����ϰڴ� ��.
    public String home(Locale locale, Model model) {  //��Ʈ�ѷ��� ���� �Ǵ� ���������� ModelAndView ��ü�� �����ϰ� �ȴ�. �������� ���εȴ�.
        
        model.addAttribute("meassage", "Hello~~" );   // jsp�������� �ѱ� attribute�� ����
        
        return "home";  //������ ������ ������ ��Ʈ�� �������� main.jsp�� ������ �ȴ�. ���� jsp�ؿ� login�̶� ���丮�� ����� �� �ȿ� 

                         // main.jsp�� �ִٸ�  login/main �̶�� �����ϸ� �ȴ� 
    }
	
	@RequestMapping(value = "about", method = RequestMethod.GET)  
	public String about(Locale locale, Model model) {          
	    return "about";                          
	}
	@RequestMapping(value = "aboutProject", method = RequestMethod.GET)  
	public String aboutProject(Locale locale, Model model) {          
	    return "aboutProject";                          
	}
	
	@RequestMapping(value = "notice", method = RequestMethod.GET)  
	public String notice(Locale locale, Model model) {          
	    return "notice";                          
	}
		
	@RequestMapping(value = "login", method = RequestMethod.GET)  
	public String login(Locale locale, Model model) {          
	    return "login";                          
	}
	@RequestMapping(value = "join", method = RequestMethod.GET)  
	public String join(Locale locale, Model model) {          
	    return "join";                          
	}
	
	@RequestMapping(value = "admin", method = RequestMethod.GET)  
	public String admin(Locale locale, Model model) {          
	    return "admin";                          
	}

	@RequestMapping(value = "test", method = RequestMethod.GET)  
	public String test(Locale locale, Model model) {          
	    return "test";                          
	}
	
	@RequestMapping(value = "insertProject", method = RequestMethod.GET)  
	public String insertProject(Locale locale, Model model) {          
	    return "insertProject";                          
	}
	
	@RequestMapping(value = "assignFail", method = RequestMethod.POST)  
	public String assignFail(Locale locale, Model model) {          
	    return "assignFail";                          
	}
	
	@RequestMapping(value = "projectBoardDetail", method = RequestMethod.GET)  
	public String projectBoardDetail(Locale locale, Model model) {          
	    return "projectBoardDetail";                          
	}
	
	
	
	
}
