package univ.common.mybatis;

import java.util.ArrayList;

import univ.common.mybatis.Member;

public interface MemberMapper {
	ArrayList<Member> getMembers();
	void insertMember(Member member);
	void updateMember(String name);
	void deleteMember(String name);
	int idcheck(Member member);
	int loginCheck(Member member);
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
	
	//mypage
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
	
	int projectCountWEB();
	int projectCountIOT();
	int projectCountANDROID();
	int projectCountWINDOW();
	int projectCountETC();
	void writeNoticeBoard(ProjectBoard pb);
	ArrayList<NoticeBoard> notice();
	}
