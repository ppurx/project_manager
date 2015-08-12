package univ.common.mybatis;

import java.util.ArrayList;

public interface MemberDAO {
	public ArrayList<Member> getMembers();
	public void insertMember(Member member);
	public void updateMember(String name);
	public void deleteMember(String name);
	int loginCheck(Member member);
	int idcheck(Member member);
	void insertProject(Project project);
	void insertProjectMentor(Member member);
	Project selectNewProject(Project project);
	
	ArrayList<Project> projectTrack(Project project);
	ArrayList<Project> projectTrackWEB(Project project);
	ArrayList<Project> projectTrackIOT(Project project);
	ArrayList<Project> projectTrackWINDOW(Project project);
	ArrayList<Project> projectTrackANDROID(Project project);
	ArrayList<Project> projectTrackETC(Project project);
	int projectCount();
	public Project projectDetail(int PRO_ID);
	void projectAssign(Member member);
	
	
	//mypages
	ArrayList<Project> projectJoinList(String USER_ID);
	
	ArrayList<ProjectBoard> projectBoardList(int PRO_ID);
	
	ArrayList<Member> userAssignList(int PRO_ID);
	
	void addJoinList(Member member);
	
	void delAssignList(Member member);
	
	ArrayList<Member> selectJoinMember(int PRO_ID);
	
	Member selectInfo(String USER_ID);
	
	void updateInfo(Member member);
	
	void projectBoardWrite(ProjectBoard pb);
	
	ProjectBoard projectBoardDetail(int PRO_BOARD_ID);
	void writeNoticeBoard(ProjectBoard pb);
	int projectCountWEB();
	int projectCountIOT();
	int projectCountANDROID();
	int projectCountWINDOW();
	int projectCountETC();
	ArrayList<NoticeBoard> notice();
}
