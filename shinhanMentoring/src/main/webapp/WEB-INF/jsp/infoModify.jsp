<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원가입</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">


</script>

</head>
<body>

 <jsp:include page="../include/header.jsp"/>
	<div id="content">
	
		<!-- masthead -->
        <div id="masthead">
			<span class="head">JOIN</span><span class="subhead">Join us!!</span>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">home</a></li>
				<li>/ join</li>
			</ul>
		</div>
		
		<div id="page-content-full">
		
		<!-- join table -->
		<div style="margin-left:50px; margin-top:50px">
			
			
		<form name="modifyForm" id=modifyForm action="infoModifyOK.do" method="get">
				<div id="contactForm">
				<table>
				
					<tr>
						<td width="80px">이름</td><td colspan="3"><input name="name"  id="name" type="text" value="${member.USER_NAME }"/>						
						
						</td>
					</tr>
					<tr>
						<td>학번</td><td colspan="2"><input readonly name="id"  id="id" type="text" value="${member.USER_ID }"/></td>
					</tr>	
					<tr>
						<td>휴대전화</td><td colspan="5"><input type="text" name="phone" value="${member.USER_PHONE }"/></td>
					</tr>	
					<tr>
						<td>E-mail</td><td  colspan="3"><input name="email" id="email" type="text" style="width:120px" value="${member.USER_EMAIL }"/>&nbsp@&nbsp <input name="emailDomain" id="emailDomain" type="text" style="width:120px" value="${member.USER_EMAIL_DOMAIN }"/>
						
						</td>
					</tr>							
					<tr>
						<td>Password</td><td><input name="password"  id="password" type="password" style="height:18px" value="${member.USER_PASSWORD }"/></td>
					</tr>					
				</table>	
				<div style="float:right; margin-right:50px"><p><input id="submitbtn" type="submit" value="수정"/> <input id="cancle" onclick="window.location='mypage.do'" type="button" value="취소"/></p></div>
			<input type="hidden" id="job" name="job" value="0"/>
			<input type="hidden" id="domain" name="domain" value=""/>
			<input type="hidden" id="idc" name="idc" value="1"/>
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