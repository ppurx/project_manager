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
			<span class="head">PROJECT TRACK</span><span class="subhead">get a chance!</span>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">home</a></li>
				<li>/ project track</li>
			</ul>
		</div>
		
		<!-- portfolio list -->
		<c:if test="${sessionScope.USER_ID!=NULL }">
					
				
				
			<div id="contactForm" style="float:right; margin-right:20px"><p><input onclick="location.href='insertProject.do'" type="button" value="프로젝트 개설"/></p>
		
		</div></c:if>
	        	<div class="featured portfolio-list">
	        	
	        	<c:forEach items="${projectTrack}" var="project">
	        		<figure>
	        			
	        			<div>
	        				<a href="projectDetail.do?PRO_ID=${project.PRO_ID }" class="heading">${project.PRO_SUBJECT }</a>
	        				<span>mentor : ${project.PRO_MENTOR } </span><br>
	        				<span>분류 : ${project.PRO_CATEGORY }</span><br>
	        				<span>프로젝트 기간 : ${project.PRO_START_DATE} ~ ${project.PRO_END_DATE }</span><br>
		        			 ${project.PRO_CONTENT }
		        		</div>
		        		<a class="link" href="projectDetail.do?PRO_ID=${project.PRO_ID }"></a>
	        		</figure>
	        	</c:forEach>
	        		<div class="clearfix"></div>
					        		
	        	</div>
	        	<!-- ENDS featured -->
	        	<!-- pager -->
	        	<c:choose>
	        	<c:when test="${currentPage+2>totalPageNum }">
	        		<c:set var="endPageNum" value="${totalPageNum }"/>
	        	</c:when>
	        	<c:when  test="${currentPage+2<=totalPageNum }">
	        		<c:set var="endPageNum" value="${currentPage+2 }"/>
	        	</c:when>
	        	
	        	</c:choose>
	        	
        		<ul class="pager">
        		<li class="paged">Page ${currentPage} of ${totalPageNum }</li>
        		<c:choose>
        		<c:when test="${currentPage-2<=0 }">
        		
	        		<c:forEach var="i" begin="1" end="${endPageNum}">
	        		<c:choose>
		        		<c:when test="${currentPage==i }">
		        			<li class="active"><a href="projectTrack2.do?currentPage=${i }">${i}</a></li>
		        		</c:when>
						<c:when test="${currentPage!=i }">
		        			<li><a href="projectTrack2.do?currentPage=${i }">${i }</a></li>
		        		</c:when>
							</c:choose>
					</c:forEach>
					
				</c:when>
				
				<c:when test="${currentPage-2>0 }">
					<c:forEach var="i" begin="${currentPage-2 }" end="${endPageNum}">
	        		<c:choose>
		        		<c:when test="${currentPage==i }">
		        			<li class="active"><a href="projectTrack2.do?currentPage=${i }">${i}</a></li>
		        		</c:when>
						<c:when test="${currentPage!=i }">
		        			<li><a href="projectTrack2.do?currentPage=${i }">${i }</a></li>
		        		</c:when>
							</c:choose>
					</c:forEach>
				
				</c:when>
				</c:choose>
				</ul>
				<div class="clearfix"></div>
	        	<!-- ENDS pager -->
	        	
	        	
	        	
	        	
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