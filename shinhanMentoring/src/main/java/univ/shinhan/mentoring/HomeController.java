package univ.shinhan.mentoring;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	@RequestMapping(value = "writeNotice", method = RequestMethod.GET)  
	public String writeNotice(Locale locale, Model model) {          
	    return "writeNotice";                          
	}
	
	
	
	@RequestMapping(value = "download", method = RequestMethod.GET)  
	public void download(HttpServletRequest request, HttpServletResponse response) {         
		 String root = request.getSession().getServletContext().getRealPath("/WEB-INF");
		 
		    String savePath = root + "\\upload";
		    System.out.println(savePath);
		    // 서버에 실제 저장된 파일명
		    
		    String filename = (String)request.getParameter("PRO_FILE") ;
		    System.out.println(filename); 
		    // 실제 내보낼 파일명
		    String orgfilename = (String)request.getParameter("PRO_FILE") ;
		    InputStream in = null;
		    OutputStream os = null;
		    File file = null;
		    boolean skip = false;
		    String client = "";
		 
		 
		    try{
		         
		 
		        // 파일을 읽어 스트림에 담기
		        try{
		            file = new File(savePath, filename);
		            in = new FileInputStream(file);
		        }catch(FileNotFoundException fe){
		            skip = true;
		        }
		 
		 
		 
		         
		        client = request.getHeader("User-Agent");
		 
		        // 파일 다운로드 헤더 지정
		        response.reset() ;
		        response.setContentType("application/octet-stream");
		        response.setHeader("Content-Description", "JSP Generated Data");
		 
		 
		        if(!skip){
		 
		             
		            // IE
		            if(client.indexOf("MSIE") != -1){
		                response.setHeader ("Content-Disposition", "attachment; filename="+new String(orgfilename.getBytes("KSC5601"),"ISO8859_1"));
		 
		            }else{
		                // 한글 파일명 처리
		                orgfilename = new String(orgfilename.getBytes("utf-8"),"iso-8859-1");
		 
		                response.setHeader("Content-Disposition", "attachment; filename=\"" + orgfilename + "\"");
		                response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
		            }  
		             
		            response.setHeader ("Content-Length", ""+file.length() );
		 
		 
		       
		            os = response.getOutputStream();
		            byte b[] = new byte[(int)file.length()];
		            int leng = 0;
		             
		            while( (leng = in.read(b)) > 0 ){
		                os.write(b,0,leng);
		            }
		 
		        }else{
		            response.setContentType("text/html;charset=UTF-8");
		           
		        }
		         
		        in.close();
		        os.close();
		 
		    }catch(Exception e){
		      e.printStackTrace();
	}
	}
	
	
	
}
