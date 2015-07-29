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
			<span class="head">classmate</span>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">home</a></li>
				<li>/ projectBoard</li>
			</ul>
		</div>
		
		<!-- posts list -->
		<!-- ������Ʈ ���� -->
	        	<div id="posts-list">
	        	<div style="margin-top:20px;margin-left:20px;">
	        				
						<h1>������Ʈ ����</h1>
						<br>
					<div style="margin-left:10px">
							<table style="font-size:15px; font-color:#000000;">
							<colgroup>
							    <col width="100px"/>
							    <col width="350px"/>
							 </colgroup>
								<tr>
									<td>������Ʈ��</td><td>${project.PRO_SUBJECT }</td>
								</tr>
								<tr>
									<td>�з�</td><td>${project.PRO_CATEGORY }</td>
								</tr>
								<tr>
									<td>����Ⱓ</td><td>${project.PRO_START_DATE } ~ ${project.PRO_END_DATE }</td>
								</tr>
								<tr>
									<td>�ֿ䳻��</td><td>${project.PRO_CONTENT }</td>
								</tr>
								<tr>
									<td>���ȿ��</td><td>${project.PRO_EFFECT }</td>
								</tr>
								<tr>
									<td>����</td><td>����</td>
								</tr>
							</table>
					</div>
					
					
	        	</div>
	        	<!--ENDS ������Ʈ ���� -->
	        	<!-- ������Ʈ �Խ���-->
	        	<br>
	        	<br>
	        	
	        	<div style="margin-top:20px;margin-left:20px;">
	        	<h1>������Ʈ ���� �Խ���</h1>
		        	<div style="margin-left:10px">
		        	<br>
		        	<input style="float:right" type="button" value="�� �ۼ�"/>
		        	<br>
		        	<br>
		        	
			        	<table id="mytable">
			        		<colgroup>
							    
							    <col width="200px"/>
							    <col width="100px"/>
							    <col width="200px"/>
							 </colgroup>
			        		<thead>
			        			
			        			<th>����</th>
			        			<th>�ۼ���</th>
			        			<th>�ۼ���</th>			        			
			        		</thead>
			        		<tbody align="center">
			        			<c:forEach var="projectBoardList" items="${projectBoardList }">
			        			<tr>
			        				
			        				<td><a href="projectBoardDetail.do">${projectBoardList.PRO_SUBJECT }</a></td>
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
	        	
	        	
	        	
	        	
	        	<!-- ends ������Ʈ �Խ���-->
		
	        	
	        <div class="wrapper">
	        	<!-- sidebar -->
	        	<aside id="sidebar">
	        		
	        		<div class="block">
		        		<h4>�����</h4>
						<ul class="address-block">
							<li class="mento">����</li>
							<li class="auth">����</li>	
							<li class="mobile">+123 456 789</li>
		        			<li class="email"><a href="mailto:email@server.com">email@server.com</a></li>					
						</ul>
	        		</div>
	        		<div class="block">
		        		<h4>������</h4>
						<ul class="address-block">
							<li class="menti"><a href="#" title="View all posts">��Ƽ</a></li>
							<li class="auth"><a href="#" title="View all posts">����</a></li>		
							<li class="mobile">+123 456 789</li>
		        			<li class="email"><a href="mailto:email@server.com">email@server.com</a></li>				
						</ul>
	        		</div>
	        		<div class="block">
		        		<h4>�����</h4>
						<ul class="address-block">
							<li class="menti"><a href="#" title="View all posts">����</a></li>
							<li class="auth"><a href="#" title="View all posts">����</a></li>						
							<li class="mobile">+123 456 789</li>
		        			<li class="email"><a href="mailto:email@server.com">email@server.com</a></li>
						</ul>
	        		</div>
	        		<div class="block">
		        		<h4>�����</h4>
						<ul class="address-block">
							<li class="menti"><a href="#" title="View all posts">����</a></li>
							<li class="auth"><a href="#" title="View all posts">����</a></li>			
							<li class="mobile">+123 456 789</li>
		        			<li class="email"><a href="mailto:email@server.com">email@server.com</a></li>			
						</ul>
	        		</div>        		
	        	
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