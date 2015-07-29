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
	int projectCount();
	public Project projectDetail(int PRO_ID);
	void projectAssign(Member member);
	
	
	//mypages
	ArrayList<Project> projectJoinList(String USER_ID);
	
	ArrayList<ProjectBoard> projectBoardList(int PRO_ID);
}
