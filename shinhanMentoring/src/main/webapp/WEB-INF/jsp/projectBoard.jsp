<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MY PAGE</title>
</head>
<body>

 <jsp:include page="../include/header.jsp"/>
	<div id="content">
		<!-- masthead -->
        <div id="masthead">
			<span class="head">${project.PRO_SUBJECT }</span>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">home</a></li>
				<li>/ projectBoard</li>
			</ul>
		</div>
		
		<!-- posts list -->
		<!--   프로젝트 개요   -->
	        	<div id="posts-list">
	        	<div style="margin-top:20px;margin-left:20px;">
	        				
						<h1>프로젝트 개요</h1>
						<br>
					<div style="margin-left:10px">
							<table style="font-size:15px; font-color:#000000;">
							<colgroup>
							    <col width="100px"/>
							    <col width="350px"/>
							 </colgroup>
								<tr>
									<td>프로젝트명</td><td>${project.PRO_SUBJECT }</td>
								</tr>
								<tr>
									<td>분류</td><td>${project.PRO_CATEGORY }</td>
								</tr>
								<tr>
									<td>수행기간</td><td>${project.PRO_START_DATE } ~ ${project.PRO_END_DATE }</td>
								</tr>
								<tr>
									<td>주요내용</td><td>${project.PRO_CONTENT }</td>
								</tr>
								<tr>
									<td>기대효과</td><td>${project.PRO_EFFECT }</td>
								</tr>
								<tr>
									<td>상태</td><td>진행</td>
								</tr>
								<c:if test="${project.PRO_MENTOR==sessionScope.USER_ID }">
								<tr>								
									<td><br><input type="button" onclick="window.location='assignList.do?PRO_ID=${project.PRO_ID}&PRO_SUBJECT=${project.PRO_SUBJECT }'" value="가입신청 현황"/></td>
								</tr>
								</c:if>
							</table>
					</div>
					
					
	        	</div>
	        	<!--ENDS 프로젝트 개요 -->
	        	<!-- 프로젝트 게시판-->
	        	<br>
	        	<br>
	        	
	        	<div style="margin-top:20px;margin-left:20px;">
	        	<h1>프로젝트 진행 게시판</h1>
		        	<div style="margin-left:10px">
		        	<br>
		        	<input style="float:right" type="button" onclick="window.location='writeProjectBoard.do?PRO_ID=${project.PRO_ID}'" value="글 작성"/>
		        	<br>
		        	<br>
		        	
			        	<table id="mytable">
			        		<colgroup>
							    
							    <col width="200px"/>
							    <col width="100px"/>
							    <col width="200px"/>
							 </colgroup>
			        		<thead>
			        			
			        			<th>제목</th>
			        			<th>작성자</th>
			        			<th>작성일</th>			        			
			        		</thead>
			        		<tbody align="center">
			        			<c:forEach var="projectBoardList" items="${projectBoardList }">
			        			<tr>
			        				
			        				<td><a href="projectBoardDetail.do?pro_board_id=${projectBoardList.PRO_BOARD_ID }">${projectBoardList.PRO_SUBJECT }</a></td>
			        				<td>${projectBoardList.USER_ID}</td>
			        				<td>${projectBoardList.PRO_DATE}</td>
			        			</tr>
			        			</c:forEach>
			        		</tbody>
			        	</table>
			        	<br>
			        	<!-- pager -->
        		
				
				<div class="clearfix"></div>
	        	<!-- ENDS pager -->
					</div>
				</div>
	        	</div>
	        	
	        	
	        	
	        	
	        	<!-- ends 프로젝트 게시판-->
		
	        	
	        <div class="wrapper">
	        	<!-- sidebar -->
	        	<aside id="sidebar">
	        		<c:forEach var="list" items="${list }">
	        		<div class="block">
		        		<h4>${list.USER_NAME }</h4>
						<ul class="address-block">
						<c:choose>
						<c:when test="${project.PRO_MENTOR==list.USER_ID}">
							<li class="mento">${list.USER_NAME }</li>
						</c:when>
						<c:when test="${project.PRO_MENTOR!=list.USER_ID}">
							<li class="menti">${list.USER_NAME }</li>
						</c:when>
						</c:choose>
							
							<li class="mobile">${list.USER_PHONE }</li>
		        			<li class="email">${list.USER_EMAIL }@${list.USER_EMAIL_DOMAIN }</a></li>					
						</ul>
	        		</div>
	        		
	        	</c:forEach>
	        	</aside>
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