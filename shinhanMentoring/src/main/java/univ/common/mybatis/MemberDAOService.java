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
}
