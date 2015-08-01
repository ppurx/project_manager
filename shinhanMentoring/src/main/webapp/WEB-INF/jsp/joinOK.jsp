<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>로그인</title>
</head>
<body>

 <jsp:include page="../include/header.jsp"/>
	<div id="content">
	
		<!-- masthead -->
        <div id="masthead">
			<span class="head">LOG IN</span>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">home</a></li>
				<li>/ login</li>
			</ul>
		</div>
		
		<div id="page-content-full">
			<!-- login form -->
			<form id="contactForm" action="#" method="post">
			<h2>가입을 환영합니다.</h2>
				<div style="margin-top:60px;margin-left:50px">
					<label>학번</label>
					<input style="margin-left:20px" name="id"  id="id" type="text" />
					
					<label style="margin-left:50px">Password</label>
					<input style="margin-left:20px" name="password"  id="password" type="text" class="form-poshytip" title="비밀번호를 잊으셨으면 아래의 버튼을 눌러주세요" />
					<br>
					<div style="margin-left:350px">
					<input type="submit" value="login"/>&nbsp&nbsp<input type="button" value="cancle"/>&nbsp&nbsp<input type="button" value="join"/>&nbsp&nbsp<input type="button" value="find Password"/>
					</div>
					
					
				</div>
			</form>
			<!-- ends of login form -->
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