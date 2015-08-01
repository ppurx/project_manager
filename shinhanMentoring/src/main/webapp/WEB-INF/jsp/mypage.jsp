<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
			<span class="head">MY PAGE</span>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">home</a></li>
				<li>/ mypage</li>
			</ul>
		</div>
		
		
		<!-- posts list -->
	        	<div id="posts-list"><br>
	        	<h1>참여중인 Project</h1>
	        	<br><br>
	        	<div style="margin-left:20px">
	        	<c:forEach items="${projectJoinList}" var="project">
					
					<article class="format-standard">						
						<h2><a href="projectBoard.do?PRO_ID=${project.PRO_ID }" class="post-heading">${project.PRO_SUBJECT }</a></h2>
						<div class="meta">
							<span>멘토 : ${project.PRO_MENTOR }</span><br>
							<span>분류 : ${project.PRO_CATEGORY }</span>
							
						</div>					
						<div class="excerpt">${project.PRO_CONTENT }
						</div>
					</article>
					
					
				</c:forEach>
					</div>
	        		
	        	</div>
	        	<!-- ENDS posts list -->
	        	
	        	
	        	<!-- sidebar -->
	        	<aside id="sidebar">
	        		
	        		<div class="block">
		        		<h4>My menu</h4>
						<ul>
							<li class="cat-item"><a href="infoModify.do?USER_ID=${sessionScope.USER_ID }" title="View all posts">내 정보 수정</a></li>
							
							
						</ul>
	        		</div>        		
	        	
	        	</aside>
		
		
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