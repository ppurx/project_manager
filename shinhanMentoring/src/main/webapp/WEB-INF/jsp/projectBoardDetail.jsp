<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>프로젝트 트랙</title>
</head>
<body>

 <jsp:include page="../include/header.jsp"/>
	<div id="content">
	
		<!-- masthead -->
        <div id="masthead">
			<span class="head">PROJECT 정보</span>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">home</a></li>
				<li>/ 프로젝트 생성</li>
			</ul>
		</div>
		
		<div id="page-content-full">
		
		<!-- join table -->
		<div style="margin-left:50px; margin-top:50px">
			
			
		<form name="projectAssign" id="projectAssign" action="projectAssign.do" method="post">
				<div id="contactForm">
				<table width="600px">
				
					<tr>
						<td width="80px">주제</td><td colspan="3">						
						<input type="text" readonly value="${projectDetail.PRO_CATEGORY }" />
						</td>
					</tr>
					<tr>
						<td>기대효과</td><td><input type="text" value="${projectDetail.PRO_EFFECT }" readonly name="effect"  id="effect" /></td>
					</tr>	
					<tr>
						<td><a href="C:\Users\sh\Desktop\springWorkspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\shinhanMentoring\upload\test.txt">다운로드</a></td>
					</tr>
					<tr>
						<td>시작일</td><td colspan="2"><input type="text" value="${projectDetail.PRO_START_DATE }" readonly id="startDate" name="startDate"/></td>
					</tr>	
					<tr>
						<td>종료일</td><td colspan="5"><input type="text" value="${projectDetail.PRO_END_DATE }" readonly  id="endDate" name="endDate"/></td>
					</tr>	
					<tr>
						<td>개요</td><td  colspan="3"><textarea readonly name="contents" id="contents">${projectDetail.PRO_CONTENT }</textarea>
						
						</td>
					</tr>							
								
				</table>	
				<div style="float:right; margin-right:50px"><p><c:if test="${sessionScope.USER_ID!=NULL }"><input id="submitbtn" type="button" value="프로젝트 가입 신청"/> </c:if><input type="button" onclick="window.location='projectTrack.do'" value="취소"/></p></div>
			<input type="hidden" name="selected_category" id="selected_category" value="0"/>
			<input type="hidden" id="PRO_ID" name="PRO_ID" value="${projectDetail.PRO_ID }"/>
			</div>
			</form>
		</div>
		<!-- ends of table -->
		</div>
		
	</div>
		
	
	        	
	<div class="clearfix"></div>
	<div class="shadow-main"></div>
</div>
	
	
	<!-- footer -->
	
		<jsp:include page="../include/footer"/>

	<!-- end of footer -->

</div>
</body>
</html>