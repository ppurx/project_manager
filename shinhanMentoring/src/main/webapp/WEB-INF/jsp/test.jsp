<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>


</head>
<body>

<form name="joinform" id="joinform" action="join.do" method="post">
<input type="button" id="dd" value="asdf"/>

<input type="text" id="test"/>
</form>
<script type="text/javascript">

$('#dd').click(function(){
	$('#joinform').submit();
	});
$(function() {
    $( "#test" ).datepicker({
    });
});
</script>
</body>
</html>