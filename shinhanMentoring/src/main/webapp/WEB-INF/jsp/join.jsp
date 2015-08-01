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
			
			
		<form name="joinform" id="joinform" action="join.do" method="post">
				<div id="contactForm">
				<table>
				
					<tr>
						<td width="80px">이름</td><td colspan="3"><input name="name"  id="name" type="text"/>						
						<select style="width:150px" id="job_select" >
							<option value="select">직업</option>
							<option value="1">학생</option>
							<option value="2">교수</option>			
									   
						</select>
						</td>
					</tr>
						
					<tr>
						<td>학번</td><td colspan="2"><input name="id"  id="id" type="text"/>&nbsp&nbsp<span id="idmessage">학번이 없는경우 임의의 ID로 가입할 수 있습니다.</span></td>
					</tr>	
					<tr>
						<td>휴대전화</td><td colspan="5"><input name="phone1" id="phone1" style="width:40px" type="text"/>&nbsp-&nbsp<input name="phone2" id="phone2" style="width:40px"type="text"/>&nbsp-&nbsp<input name="phone3" id="phone3" style="width:40px"  type="text"/></td>
					</tr>	
					<tr>
						<td>E-mail</td><td  colspan="3"><input name="email" id="email" type="text" style="width:120px"/>&nbsp@&nbsp <input readonly name="emailDomain" id="emailDomain" type="text" style="width:120px"/>
						<select style="width:150px" id="email_domain_select" >
							<option value="선택">이메일 선택</option>
							<option value="naver.com">naver.com</option>
						    <option value="daum.net">daum.net</option>
						    <option value="nate.net">nate.net</option>
						    <option value="hotmail.com">hotmail.com</option>
						    <option value="empas.com">empas.com</option>
						    <option value="dreamwiz.com">dreamwiz.com</option>						      
						    <option value="gmail.com">gmail.com</option>
						    <option value="direct">직접 입력</option>
						</select>
						
						
						</td>
					</tr>							
					<tr>
						<td>Password</td><td><input name="password"  id="password" type="password" style="height:18px"/></td>
					</tr>					
				</table>	
				<div style="float:right; margin-right:50px"><p><input id="submitbtn" type="button" value="JOIN"/> <input type="button" value="CANCLE"/></p></div>
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
	

	<script type="text/javascript">
	$( document ).ready(function() {
		$("#email_domain_select").change(function(){
				if($("#email_domain_select option:selected").val()=="direct"){
					$('#emailDomain').removeAttr("readonly", "readonly");
					$("#emailDomain").val("");
				}
				else{
				  $('#emailDomain').attr("readonly", "readonly");
				  $('#emailDomain').val($("#email_domain_select option:selected").val());
				}
			});
			
		$("#job_select").change(function(){
			$("#job").val($("#job_select option:selected").val());
		});
		
		$('#submitbtn').click(function(){
			if($("#job").val()==0)alert("직업을 선택하시오.");
			else if($("#name").val()=="") alert("이름을 입력하시오.");
			else if($("#id").val()=="")alert("학번을 입력하시오.");
			else if($("#phone1").val()==""||$("#phone2").val()==""||$("#phone3").val()=="") alert("연락처를 입력하시오.");
			
		
			else if($("#email").val()=="")alert("email을 입력하시오.");
			else if($("#emailDomain").val()=="")alert("email 도메인을 선택하시오.");
			else if($("#password").val()=="")alert("비밀번호를 입력하시오.");
			else if($('#idc').val()==1) alert("아이디를 확인하시오.");
			else $('#joinform').submit();
		});
	});
	$('#id').bind("keyup", function (event) {
			startRequest();
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
		    xmlHttp.open("POST", "idcheck.do?idx="+$('#id').val(), true);
		    xmlHttp.send(null);
		}
		    
		function handleStateChange() {
		    if(xmlHttp.readyState == 4) {
		        if(xmlHttp.status == 200) {
		        	var mes = xmlHttp.responseXML.getElementsByTagName("message")[0].firstChild.data;
		        	if(mes==0){
		        		$('#idmessage').empty();
		        		$('#idmessage').append("가입할 수 있습니다.");
		        		$('#idc').val(0);
		        	}
		        	else{
		        		$('#idmessage').empty();
		        		$('#idmessage').append("ID/학번이 중복되었습니다.");
		        		$('#idc').val(1);
		        	}
		        	
		        }
		    }
		}
	
</script>
</body>
</html>