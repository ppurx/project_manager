<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//code.jquery.com/jquery.min.js"></script>

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
			<form id="contactForm" action="logincheck.do" method="post">
				<div style="margin-top:60px;margin-left:50px">
					<label>학번</label>
					<input style="margin-left:20px" name="id"  id="id" type="text" />
					
					<label style="margin-left:50px">Password</label>
					<input style="margin-left:20px" name="password"  id="password" type="text" class="form-poshytip" title="비밀번호를 잊으셨으면 아래의 버튼을 눌러주세요" />
					<br>
					<div style="margin-left:350px">
					<input type="button" id="login" value="login"/>&nbsp&nbsp<input type="button" onclick="location.href='home.do' " value="cancle"/>&nbsp&nbsp<input type="button" value="join" onclick="location.href='join.do' "/>&nbsp&nbsp<input type="button" value="find Password"/>
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

<script type="text/javascript">
	$(document).ready(function(){
		$('#login').click(function(){
			startRequest();
		});
		
		
	});

</script>

<script type="text/javascript">
		var xmlHttp;
		function createXMLHttpRequest() {
		    if (window.ActiveXObject) {
		        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		    } 
		    else if (window.XMLHttpRequest) {
		        xmlHttp = new XMLHttpRequest();
		    }
		}
		    
		function startRequest() {
		    createXMLHttpRequest();
		    xmlHttp.onreadystatechange = handleStateChange;
		    xmlHttp.open("POST", "logincheck.do?id="+$('#id').val()+"&password="+$('#password').val(), true);
		    xmlHttp.send(null);
		}
		    
		function handleStateChange() {
		    if(xmlHttp.readyState == 4) {
		        if(xmlHttp.status == 200) {
		        	var mes = xmlHttp.responseXML.getElementsByTagName("message")[0].firstChild.data;
		        	if(mes==1){
		        		//true
		        		window.location.href="home.do";
		        	}
		        	else{
		        		//false
		        		alert("ID(학번)-비밀번호를 확인해 주십시오");
		        		window.location.href="login.do";
		        	}
		        	
		        }
		    }
		}
	
</script>

</body>
</html>