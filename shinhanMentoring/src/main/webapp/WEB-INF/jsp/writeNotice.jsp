<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>프로젝트 게시판 글작성</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">


</script>

</head>
<body>

 <jsp:include page="../include/header.jsp"/>
 
	<div id="content">
	<input type="hidden" name="test" value="asdf"/>
		<!-- masthead -->
        <div id="masthead">
			<span class="head">공지사항 작성</span>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">home</a></li>
				<li>/ notice</li>
			</ul>
		</div>
		
		<div id="page-content-full">
		
		<!-- join table -->
		<div style="margin-left:50px; margin-top:50px">
			
			<form name="writeNoticeBoard" action="writeNoticeBoard.do" method="post" enctype="multipart/form-data">
		
				<div id="contactForm">
				<table>
				
					<tr>
						<td width="80px">제목</td><td colspan="3"><input style="width:300px" name="subject" id="subject" type="text"/>						
						
						</td>
					</tr>
						
					<tr>
						<td>파일</td><td><input style="width:550px" type="file" name="file" id="file"/></td>
					</tr>	
											
					<tr>
						<td>내용</td><td><textarea style="width:550px" name="content" id="content"></textarea></td>
					</tr>					
				</table>	
				<div style="float:right; margin-right:50px"><p><input id="submitbtn" type="submit" value="글작성"/> <input type="button" onclick="window.location='projectBoardWrite.do?PRO_ID=${PRO_ID}'" value="취소"/></p></div>
			
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