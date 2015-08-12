<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>공지사항</title>
</head>
<body>

 <jsp:include page="../include/header.jsp"/>
	<div id="content">
	
		<!-- masthead -->
        <div id="masthead">
			<span class="head">NOTICE</span><span class="subhead">about issue</span>
			<ul class="breadcrumbs">
				<li><a href="index.html">home</a></li>
				<li>/ notice</li>
			</ul>
		</div>
		
		<div id="posts-list">
			<article class="format-standard">
						
						<c:forEach items="${notice }" var="notice">
						<h1><a href="single.html" class="post-heading">${notice.NOT_SUBJECT }</a></h1>
						<div class="meta">
							<span class="entry-date">${notice.NOT_DATE }</span>
							
						</div>
						
						
						<div class="excerpt">${notice.NOT_CONTENT }
						</div>
						</c:forEach>
											
				</article>
				<!-- pager -->
				
				
	
				<div class="clearfix"></div>
	        	<!-- ENDS pager -->
	        	
	        	
	        	<div class="clearfix"></div>
				<!-- ENDS sidebar -->
		</div>
		<!-- sidebar -->
	        	<aside id="sidebar">
	        		<div class="block">
		        		<h4>Contact</h4>
		        		<ul class="address-block">
		        			<li class="address">관리자</li>
		        			<li class="phone">+123 456 789</li>
		        			<li class="mobile">+123 456 789</li>
		        			<li class="email"><a href="mailto:email@server.com">email@server.com</a></li>
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
			
			<div id="to-top"></div>
		</footer>

</div>
</body>
</html>