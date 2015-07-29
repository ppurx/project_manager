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
	int projectCount();
	public Project projectDetail(int PRO_ID);
	void projectAssign(Member member);
	
	//mypage
	ArrayList<Project> projectJoinList(String USER_ID);
	ArrayList<ProjectBoard> projectBoardList(int PRO_ID);
}
