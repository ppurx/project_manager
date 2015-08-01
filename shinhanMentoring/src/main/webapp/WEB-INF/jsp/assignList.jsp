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
			<span class="head">MY PAGE</span>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">home</a></li>
				<li>/ mypage</li>
			</ul>
		</div>		
		
		<div id="page-content-full">
		<h2>${PRO_SUBJECT } 가입신청 현황</h2>
			<div style="margin-top:20px;">
				<table id="mytable">
	        		<colgroup>
					    <col width="100px"/>
					    <col width="200px"/>
					    <col width="100px"/>
					    <col width="200px"/>
					 </colgroup>
	        		<thead>
	        			
	        			<th>이름</th>
	        			<th>연락처</th>
	        			<th>E-mail</th>	
	        			<th>가입승인</th>		        			
	        		</thead>
	        		<tbody align="center">
	        			<c:forEach var="list" items="${userAssignList }">
	        			<tr>
	        				
	        				<td>${list.USER_NAME }</a></td>
	        				<td>${list.USER_PHONE}</td>
	        				<td>${list.USER_EMAIL}@${list.USER_EMAIL_DOMAIN }</td>
	        				<td><input type="button" value="가입 승인" onclick="window.location='approve.do?USER_ID=${list.USER_ID}&PRO_ID=${PRO_ID }'"/></td>
	        			</tr>
	        			</c:forEach>
	        		</tbody>
	        	</table>
			</div>
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