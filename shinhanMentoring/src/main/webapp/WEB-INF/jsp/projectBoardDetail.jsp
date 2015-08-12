<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//code.jquery.com/jquery.min.js"></script>
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
						<input type="text" readonly value="${pb.PRO_SUBJECT }" />
						</td>
					</tr>
					<c:if test="${pb.PRO_FILE!='' }">
						<tr>
							<td>첨부파일</td><td><a href="#"id="download"><input type="text" value="${pb.PRO_FILE }" readonly id="file"/></a></td>
						</tr>	
					</c:if>
					<tr>
						<td>작성일</td><td colspan="2"><input type="text" value="${pb.PRO_DATE }" readonly/></td>
					</tr>	
					
					<tr>
						<td>내용</td><td  colspan="3"><textarea readonly name="contents" id="contents">${pb.PRO_CONTENT }</textarea>
						
						</td>
					</tr>							
								
				</table>	
				<div style="float:right; margin-right:50px"><p><c:if test="${sessionScope.USER_ID!=NULL }"><input id="submitbtn" type="button" value="프로젝트 가입 신청"/> </c:if><input type="button" onclick="window.location='projectTrack.do'" value="취소"/></p></div>
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
<script type="text/javascript">
	$( document ).ready(function() {
		$('#download').click(function(){
			window.location="download.do?PRO_FILE="+$('#file').val();
		});
});

</script>

</body>
</html>