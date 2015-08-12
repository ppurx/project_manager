package univ.common.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOService implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public ArrayList<Member> getMembers() {
		ArrayList<Member> result = new ArrayList<Member>();
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		//getMember()�� �޼ҵ��� mapper.mxl�� id�� �����ؾ��Ѵ�.
		result = memberMapper.getMembers();
		
		return result;
	}


	@Override
	public void insertMember(Member member) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.insertMember(member);
	}
	
	@Override
	public int idcheck(Member member) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		return memberMapper.idcheck(member);
	}
	
	@Override
	public int loginCheck(Member member) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		return memberMapper.loginCheck(member);
	}


	@Override
	public void updateMember(String name) {
		// TODO Auto-generated method stub
	}


	@Override
	public void deleteMember(String name) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.deleteMember(name);
	}
	
	@Override
	public void insertProject(Project project) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.insertProject(project);
	}

	
	@Override
	public ArrayList<Project> projectTrack(Project project) {
		ArrayList<Project> result = new ArrayList<Project>();
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		//getMember()�� �޼ҵ��� mapper.mxl�� id�� �����ؾ��Ѵ�.
		result = memberMapper.projectTrack(project);
		
		return result;
	}


	@Override
	public int projectCount() {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int totalCount = memberMapper.projectCount();
		return totalCount;
	}


	@Override
	public Project projectDetail(int PRO_ID) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		Project p = new Project();
		p=memberMapper.projectDetail(PRO_ID);
		return p;
	}


	@Override
	public void projectAssign(Member member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.projectAssign(member);
		
	}


	@Override
	public void insertProjectMentor(Member member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.insertProjectMentor(member);
	}


	@Override
	public Project selectNewProject(Project project) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		Project p = memberMapper.selectNewProject(project);
		return p;
	}


	@Override
	public ArrayList<Project> projectJoinList(String USER_ID) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<Project> result = memberMapper.projectJoinList(USER_ID);
		
		return result;
	}


	@Override
	public ArrayList<ProjectBoard> projectBoardList(int PRO_ID) {
		// TODO Auto-generated method stub
		
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<ProjectBoard> result = memberMapper.projectBoardList(PRO_ID);
		return result;
	}


	@Override
	public ArrayList<Member> userAssignList(int PRO_ID) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<Member> result = memberMapper.userAssignList(PRO_ID);
		return result;
	}


	@Override
	public void addJoinList(Member member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.addJoinList(member);
	}


	@Override
	public void delAssignList(Member member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.delAssignList(member);
	}


	@Override
	public ArrayList<Member> selectJoinMember(int PRO_ID) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<Member> member = memberMapper.selectJoinMember(PRO_ID);
		return member;
	}


	@Override
	public Member selectInfo(String USER_ID) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		Member member = memberMapper.selectInfo(USER_ID);
		
		return member;
	}


	@Override
	public void updateInfo(Member member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.updateInfo(member);
	}


	@Override
	public void projectBoardWrite(ProjectBoard pb) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.projectBoardWrite(pb);
		
	}


	@Override
	public ProjectBoard projectBoardDetail(int PRO_BOARD_ID) {
		// TODO Auto-generated method stub
		
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ProjectBoard pb =memberMapper.projectBoardDetail(PRO_BOARD_ID);
		
		return pb;
	}


	@Override
	public ArrayList<Project> projectTrackWEB(Project project) {
		// TODO Auto-generated method stub
		ArrayList<Project> result = new ArrayList<Project>();
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		//getMember()�� �޼ҵ��� mapper.mxl�� id�� �����ؾ��Ѵ�.
		result = memberMapper.projectTrackWEB(project);
		
		return result;
	}


	@Override
	public ArrayList<Project> projectTrackIOT(Project project) {
		// TODO Auto-generated method stub
		ArrayList<Project> result = new ArrayList<Project>();
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		//getMember()�� �޼ҵ��� mapper.mxl�� id�� �����ؾ��Ѵ�.
		result = memberMapper.projectTrackIOT(project);
		
		return result;
	}


	@Override
	public ArrayList<Project> projectTrackWINDOW(Project project) {
		// TODO Auto-generated method stub
		ArrayList<Project> result = new ArrayList<Project>();
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		//getMember()�� �޼ҵ��� mapper.mxl�� id�� �����ؾ��Ѵ�.
		result = memberMapper.projectTrackWINDOW(project);
		
		return result;
	}


	@Override
	public ArrayList<Project> projectTrackANDROID(Project project) {
		// TODO Auto-generated method stub
		ArrayList<Project> result = new ArrayList<Project>();
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		//getMember()�� �޼ҵ��� mapper.mxl�� id�� �����ؾ��Ѵ�.
		result = memberMapper.projectTrackANDROID(project);
		
		return result;
	}


	@Override
	public ArrayList<Project> projectTrackETC(Project project) {
		// TODO Auto-generated method stub
		ArrayList<Project> result = new ArrayList<Project>();
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		//getMember()�� �޼ҵ��� mapper.mxl�� id�� �����ؾ��Ѵ�.
		result = memberMapper.projectTrackETC(project);
		
		return result;
	}


	@Override
	public int projectCountWEB() {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int totalCount = memberMapper.projectCountWEB();
		return totalCount;
	}


	@Override
	public int projectCountIOT() {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int totalCount = memberMapper.projectCountIOT();
		return totalCount;
	}


	@Override
	public int projectCountANDROID() {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int totalCount = memberMapper.projectCountANDROID();
		return totalCount;
	}


	@Override
	public int projectCountWINDOW() {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int totalCount = memberMapper.projectCountWINDOW();
		return totalCount;
	}


	@Override
	public int projectCountETC() {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int totalCount = memberMapper.projectCountETC();
		return totalCount;
	}


	@Override
	public void writeNoticeBoard(ProjectBoard pb) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.writeNoticeBoard(pb);
	}


	@Override
	public ArrayList<NoticeBoard> notice() {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<NoticeBoard> pb=memberMapper.notice();
		 
		return pb;
	}
}
