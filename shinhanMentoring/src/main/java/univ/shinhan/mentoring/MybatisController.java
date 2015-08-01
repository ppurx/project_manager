package univ.shinhan.mentoring;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import univ.common.mybatis.Member;
import univ.common.mybatis.MemberDAOService;
import univ.common.mybatis.Project;
import univ.common.mybatis.ProjectBoard;

@Controller
public class MybatisController {
	
	// 
	@Autowired
	private MemberDAOService memberDAOService;
	
	private static final Logger logger = LoggerFactory.getLogger(MybatisController.class);
		
	//���� ����ȭ��.
	@RequestMapping("/main")
	public ModelAndView main(Locale locale, Model model) {
		logger.info("Welcome main.", locale);

		// view ȭ���� main.jsp�� DB�κ��� �о�� �����͸� �����ش�.
		ModelAndView result = new ModelAndView();
		//addObject view�� �Ѿ�� ������
		List<Member> memberList = memberDAOService.getMembers();
		result.addObject("result", memberList);
		result.setViewName("main");
		return result;
	}
	
	//insert ��ư Ŭ���� ���� �����ͼ� result.jsp�� ȭ����ȯ ���ش�.
	@RequestMapping(value ="/join", method = RequestMethod.POST)
	public String join(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		Member member = new Member();
		member.setUSER_ID((String) request.getParameter("id"));
		member.setUSER_NAME((String) request.getParameter("name"));
		member.setUSER_PASSWORD((String) request.getParameter("password"));
		member.setUSER_EMAIL((String)request.getParameter("email"));
		member.setUSER_EMAIL_DOMAIN((String)request.getParameter("emailDomain"));
		member.setUSER_PHONE((String)request.getParameter("phone1")+(String)request.getParameter("phone2")+(String)request.getParameter("phone3"));
		member.setUSER_JOB((String)request.getParameter("job"));
		
		memberDAOService.insertMember(member);
		System.out.println("insert complete");
		/*
		//�Ʒ��κ��� select���� result.jsp���Ͽ� �����ֱ� ���� �ǻ��.
		ModelAndView result = new ModelAndView();
		
		List<Member> memberList = memberDAOService.getMembers();
		result.addObject("result", memberList);
		*/
		return "joinOK";
	}
	
	@RequestMapping(value = "idcheck", method = RequestMethod.POST)  
	public void idcheck(HttpServletRequest request, HttpServletResponse response) throws IOException {      
		String idcheck=(String)request.getParameter("idx");
		Member member = new Member();
		member.setUSER_ID(idcheck);
		int x= memberDAOService.idcheck(member);
		System.out.println(x);
		PrintWriter out = response.getWriter();

		 response.setContentType("text/xml");
	        response.setHeader("Cache-Control", "no-cache");
	        out.println("<response>");
	        out.println("<message>" + x + "</message>");
	        out.println("</response>");
	        out.close();
	}
	
	@RequestMapping(value = "logincheck", method = RequestMethod.POST)  
	public void logincheck(HttpServletRequest request, HttpServletResponse response) throws IOException {      
		String USER_ID = (String)request.getParameter("id");
		String USER_PASSWORD = (String)request.getParameter("password");
		Member member = new Member();
		member.setUSER_ID(USER_ID);
		member.setUSER_PASSWORD(USER_PASSWORD);
		int x= memberDAOService.loginCheck(member);
		System.out.println(member.getUSER_ID());
		System.out.println(member.getUSER_PASSWORD());
		
		
		PrintWriter out = response.getWriter();
		if(x==1){
			HttpSession session = request.getSession();
			session.setAttribute("USER_ID", USER_ID);
			
			response.setContentType("text/xml");
	        response.setHeader("Cache-Control", "no-cache");
	        out.println("<response>");
	        out.println("<message>" + 1 + "</message>");
	        out.println("</response>");
	        out.close();
		}
		else{
			response.setContentType("text/xml");
	        response.setHeader("Cache-Control", "no-cache");
	        out.println("<response>");
	        out.println("<message>" + 0 + "</message>");
	        out.println("</response>");
	        out.close();
		}
	}
	
		@RequestMapping(value = "logout", method = RequestMethod.GET)  
		public String logout(HttpServletRequest request, HttpServletResponse response) throws IOException {   
			
			HttpSession session = request.getSession();
			session.removeAttribute("USER_ID");
			
			return "home";
		}
		
		@RequestMapping(value = "insertProjectTrack", method = RequestMethod.POST)  
		public String insertProjectTrack(HttpServletRequest request, HttpServletResponse response) throws IOException {   
		
			HttpSession session = request.getSession();
			String subject = (String)request.getParameter("subject");
			String category = (String)request.getParameter("selected_category");
			String effect = (String)request.getParameter("effect");
			String startDate = (String)request.getParameter("startDate");
			String endDate = (String)request.getParameter("endDate");
			String contents = (String)request.getParameter("contents");
			Project project = new Project();
			int PRO_ID;
			
			project.setPRO_MENTOR((String)session.getAttribute("USER_ID"));
			project.setPRO_SUBJECT(subject);
			project.setPRO_CATEGORY(category);
			project.setPRO_EFFECT(effect);
			project.setPRO_START_DATE(startDate);
			project.setPRO_END_DATE(endDate);
			project.setPRO_CONTENT(contents);
			
			memberDAOService.insertProject(project);
			
			Project p = memberDAOService.selectNewProject(project);
			
			Member member = new Member();
			
			member.setUSER_ID(project.getPRO_MENTOR());
			member.setPRO_ID(""+p.getPRO_ID());
			memberDAOService.insertProjectMentor(member);
			
			
			
			
			
			return "forward:/projectTrack.do";
			
		}
		
		
		@RequestMapping("/projectTrack")
		public ModelAndView projectTrack(HttpServletRequest request, HttpServletResponse response) {

			// view ȭ���� main.jsp�� DB�κ��� �о�� �����͸� �����ش�.
			ModelAndView project = new ModelAndView();
			//addObject view�� �Ѿ�� ������
			Project p = new Project();
			p.setStartNum("1");
			p.setEndNum("9");
			
			HttpSession session = request.getSession();
			session.setAttribute("currentPage", "1");
			List<Project> projectList = memberDAOService.projectTrack(p);
			
			project.addObject("projectTrack", projectList);
			project.setViewName("projectTrack");
			
			int totalCount = memberDAOService.projectCount();
			int totalPageNum;
			if(totalCount%9==0){
				totalPageNum=totalCount/9;
			}
			else{
				totalPageNum=totalCount/9+1;
			}
			
			
			
			project.addObject("totalPageNum", totalPageNum);
			
			return project;
		}
		
		@RequestMapping("/projectTrack2")
		public ModelAndView projectTrack2(HttpServletRequest request, HttpServletResponse response) {

			// view ȭ���� main.jsp�� DB�κ��� �о�� �����͸� �����ش�.
			ModelAndView project = new ModelAndView();
			
			int currentPage = Integer.parseInt((String)request.getParameter("currentPage"));
			//addObject view�� �Ѿ�� ������
			Project p = new Project();
			HttpSession session = request.getSession();
			int totalCount = memberDAOService.projectCount();
			int totalPageNum;
			if(totalCount%9==0){
				totalPageNum=totalCount/9;
			}
			else{
				totalPageNum=totalCount/9+1;
			}
			
			project.addObject("totalPageNum", totalPageNum);
			project.addObject("currentPage", currentPage);
			p.setStartNum(""+(currentPage*9-8));
			p.setEndNum(""+(currentPage*9));
			List<Project> projectList = memberDAOService.projectTrack(p);
			
			
			project.addObject("projectTrack", projectList);
			project.setViewName("projectTrack");
			
			return project;
		}
		
		@RequestMapping(value = "projectDetail", method = RequestMethod.GET)  
		public ModelAndView projectDetail(HttpServletRequest request, HttpServletResponse response) {      
			
			ModelAndView projectDetail = new ModelAndView();
			
			int PRO_ID=Integer.parseInt(request.getParameter("PRO_ID"));
			System.out.println("----------------------"+PRO_ID);
			Project project = memberDAOService.projectDetail(PRO_ID);
			
			
			projectDetail.addObject("projectDetail",project);
			projectDetail.setViewName("projectDetail");
		    return projectDetail;                          
		}
		
		@RequestMapping(value = "projectAssign", method = RequestMethod.POST)  
		public void projectAssign(HttpServletRequest request, HttpServletResponse response) throws IOException {      
			int check=1;
			PrintWriter out = response.getWriter();
			
			System.out.println(request.getParameter("PRO_ID"));
			Member member = new Member();
			HttpSession session = request.getSession();
			member.setUSER_ID((String)session.getAttribute("USER_ID"));
			member.setPRO_ID((String)request.getParameter("PRO_ID"));
				
			System.out.println(member.getUSER_ID());
			try{
				memberDAOService.projectAssign(member);
			}
			catch(Exception e){
				System.out.println(e);
					check=0;//false;
			}
			
			response.setContentType("text/xml");
	        response.setHeader("Cache-Control", "no-cache");
	        out.println("<response>");
	        out.println("<message>" + check + "</message>");
	        out.println("</response>");
	        out.close();
			
		}
		
		
		@RequestMapping(value = "mypage", method = RequestMethod.GET)  
		public ModelAndView mypage(HttpServletRequest request, HttpServletResponse response) {          
			HttpSession session = request.getSession();
			String USER_ID = (String)session.getAttribute("USER_ID");
			ModelAndView mav = new ModelAndView();
			
			List<Project> projectList = memberDAOService.projectJoinList(USER_ID);
			
			mav.addObject("projectJoinList",projectList);
			mav.setViewName("mypage");
			return mav;
		}
		
		@RequestMapping(value = "projectBoard", method = RequestMethod.GET)  
		public ModelAndView projectBoard(HttpServletRequest request, HttpServletResponse response) {          
			ModelAndView mav = new ModelAndView();
			int PRO_ID=Integer.parseInt(request.getParameter("PRO_ID"));
			Project project = memberDAOService.projectDetail(PRO_ID);
			List<ProjectBoard> projectBoardList = memberDAOService.projectBoardList(PRO_ID);
			mav.addObject("project",project);
			
			for(int i=0;i<projectBoardList.size();i++){
				projectBoardList.get(i).setPRO_DATE((projectBoardList.get(i).getPRO_DATE().substring(0, 10)));
			}
			
			List<Member> list = memberDAOService.selectJoinMember(PRO_ID);
			mav.addObject("list",list);
			mav.addObject("projectBoardList",projectBoardList);
			
			
			
			mav.setViewName("projectBoard");
			return mav;                          
		}
		
		@RequestMapping(value = "assignList", method = RequestMethod.GET)  
		public ModelAndView assignList(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {          
			request.setCharacterEncoding("utf-8");
			ModelAndView mav = new ModelAndView();
			int PRO_ID=Integer.parseInt(request.getParameter("PRO_ID"));
			String PRO_SUBJECT = new String(request.getParameter("PRO_SUBJECT").getBytes("ISO-8859-1"), "UTF-8");
			List<Member> member = memberDAOService.userAssignList(PRO_ID);
			
			mav.addObject("userAssignList",member);
			mav.addObject("PRO_SUBJECT",PRO_SUBJECT);
			System.out.println(PRO_ID);
			mav.addObject("PRO_ID",PRO_ID);
			mav.setViewName("assignList");
			return mav;                          
		}
		
		@RequestMapping(value = "approve", method = RequestMethod.GET)  
		public String approve(HttpServletRequest request, HttpServletResponse response) {  
			Member member = new Member();
			member.setUSER_ID(request.getParameter("USER_ID"));
			member.setPRO_ID(request.getParameter("PRO_ID"));
			
			
			memberDAOService.addJoinList(member);
			memberDAOService.delAssignList(member);
		    return "forward:/mypage.do";       
		}
		
		@RequestMapping(value = "infoModify", method = RequestMethod.GET)  
		public ModelAndView infoModify(HttpServletRequest request, HttpServletResponse response) {  
			ModelAndView mav = new ModelAndView();
			
			String USER_ID = (String)request.getParameter("USER_ID");
			
			Member member = memberDAOService.selectInfo(USER_ID);
			
			mav.addObject("member",member);
			mav.setViewName("infoModify");
		    return mav;       
		}
		
		
		@RequestMapping(value = "infoModifyOK", method = RequestMethod.GET)  
		public String infoModifyOK(HttpServletRequest request, HttpServletResponse response) {  
			
			HttpSession session = request.getSession();
			String USER_ID = (String) session.getAttribute("USER_ID");
			Member member = new Member();
			member.setUSER_NAME((String)request.getParameter("name"));
			member.setUSER_PHONE((String)request.getParameter("phone"));
			member.setUSER_ID(USER_ID);
			member.setUSER_EMAIL((String)request.getParameter("email"));
			member.setUSER_EMAIL_DOMAIN((String)request.getParameter("emailDomain"));
			member.setUSER_PASSWORD((String)request.getParameter("password"));
			
			
			memberDAOService.updateInfo(member);
			 return "forward:/mypage.do";      
		}
		@RequestMapping(value = "writeProjectBoard", method = RequestMethod.GET)  
		public ModelAndView writeProjectBoard(HttpServletRequest request, HttpServletResponse response) {          
			ModelAndView mav = new ModelAndView();
			mav.addObject("PRO_ID",request.getParameter("PRO_ID"));
			mav.setViewName("writeProjectBoard");
			return mav;
		}
		
		@RequestMapping(value = "projectBoardWrite", method = RequestMethod.POST)  
		public ModelAndView projectBoardWrite(HttpServletRequest request, HttpServletResponse response) throws IOException {          
		
			ModelAndView mav = new ModelAndView();
			int maxPostSize = 10 * 1024 * 1024; // 10MB
		     String saveDirectory = request.getSession().getServletContext().getRealPath("/upload");
		     MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxPostSize, "utf-8");
		 
		     Enumeration formNames=multi.getFileNames();  // 폼의 이름 반환
		 
		     String fileInput = "";
		     String fileName = "";
		     String type = "";
		     File fileObj = null;
		     String originFileName = "";    
		     String fileExtend = "";
		     String fileSize = "";
		 
		     while(formNames.hasMoreElements()) {
		          fileInput = (String)formNames.nextElement();                // 파일인풋 이름
		          fileName = multi.getFilesystemName(fileInput);            // 파일명
		          if (fileName != null) {
		               type = multi.getContentType(fileInput);                   //콘텐트타입    
		               fileObj = multi.getFile(fileInput);                             //파일객체
		               originFileName = multi.getOriginalFileName(fileInput);           //초기 파일명
		               fileExtend = fileName.substring(fileName.lastIndexOf(".")+1); //파일 확장자
		               fileSize = String.valueOf(fileObj.length());                    // 파일크기
		               
		               System.out.println(saveDirectory+"\\"+originFileName);
		          }
		     }
       
		return mav;
		}
}
