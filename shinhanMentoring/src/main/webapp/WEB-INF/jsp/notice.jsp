<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
						
						
						<h1><a href="single.html" class="post-heading">Lorem ipsum dolor amet</a></h1>
						<div class="meta">
							<span class="entry-date">23 Sep, 2011</span>
							in <span class="categories"><a href="#">Category 1</a>, <a href="#">Category 2</a></span>
						</div>
						
						
						<div class="excerpt">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed.
						</div>
						
						<a href="single.html" class="read-more">read more</a>
						
				</article>
				<!-- pager -->
        		<ul class="pager">
					<li class="paged">Page 1 of 2</li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
				</ul>
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
		        			<li class="address">Address line, city, state ZIP</li>
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