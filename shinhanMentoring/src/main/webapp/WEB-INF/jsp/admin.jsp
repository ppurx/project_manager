<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>admin</title>
</head>
<body>

 <jsp:include page="../include/header.jsp"/>
	<div id="content">
	
		<!-- masthead -->
        <div id="masthead">
			<span class="head">ADMIN</span>
		</div>
	<div id="page-content-full">
	
	<div style="height:400px;">
		<input onclick="window.location='writeNotice.do'" type="button" value="�������� �ۼ�"/><br>
		<input type="button" value="���� ���� ����"/>
	</div>
	</div>
	<!-- footer -->
	
		<jsp:include page="../include/footer"/>

	<!-- end of footer -->
</div>
</body>
</html>