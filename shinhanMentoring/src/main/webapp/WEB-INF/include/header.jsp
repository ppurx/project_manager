<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>

		<meta charset="utf-8"/>		<!--[if lt IE 9]>
			<script src="js/css3-mediaqueries.js"></script>
		<![endif]-->
		<link rel="stylesheet" media="all" href="css/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->
		
		
		<!-- JS -->
		<script src="js/jquery-1.6.4.min.js"></script>
		
		<!--  <script src="js/less-grid-4.js"></script> -->
		<script src="js/custom.js"></script>
		<script src="js/tabs.js"></script>
		
		<!-- Masonry -->
		<script src="js/masonry.min.js" ></script>
		<script src="js/imagesloaded.js" ></script>
		<!-- ENDS Masonry -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="css/jquery.tweet.css" media="all"  /> 
		<script src="js/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="css/superfish.css" /> 
		<script  src="js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="js/superfish-1.4.8/js/superfish.js"></script>
		<script  src="js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="js/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="js/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="js/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="js/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Allan:700' rel='stylesheet' type='text/css'>
		
		<!-- Flex Slider -->
		<link rel="stylesheet" href="css/flexslider.css" >
		<script src="js/jquery.flexslider-min.js"></script>
		<!-- ENDS Flex Slider -->
		
		
		<!--[if IE 6]>
		<link rel="stylesheet" href="css/ie6-hacks.css" media="screen" />
		<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
			<script>
          		/* EXAMPLE */
          		DD_belatedPNG.fix('*');
        	</script>
		<![endif]-->
		
		<!-- Lessgrid -->
		<link rel="stylesheet" media="all" href="css/lessgrid.css"/>
		
		<!-- modernizr -->
		<script src="js/modernizr.js"></script>
		<style>
		#log{
			color:white;
		}
		
		#btnset{
			float:right;
			margin-top:15px;
		}
	</style>

	<link rel="stylesheet" href="css/table.css" >
	</head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<header>
			<div class="wrapper">
				<div class="clearfix">
				
				<c:if test="${sessionScope.USER_ID==NULL }">
					<div id="btnset">
					
					<a href="login.do"><font id="log">Login</font></a> | 
					<a href="join.do"><font id="log">Join</font></a> | 
					<a href="admin.do"><font id="log">Admin</font></a>
					</div>
				</c:if>
				<c:if test="${sessionScope.USER_ID!=NULL }">
					<div id="btnset">
					
					<a id="logout" href="logout.do"><font id="log">Logout</font></a> | 
					<a href="mypage.do"><font id="log">MyPage</font></a> | 
					<a href="admin.do"><font id="log">Admin</font></a>
					</div>
				
				</c:if>
				
				</div>
				<a href="#" id="logo" ><font style="font-size:40px; color:white;">Project Manager</font></a>
				
				<nav style="margin-left:200px">
					<ul id="nav" class="sf-menu">
						<li><a href="index.jsp">Home<span class="subheader"> </span></a></li>
						<li><a href="about.do">about<span class="subheader"></span></a></li>
						<li><a href="#">Project<span class="subheader"></span></a>
							<ul>
								<li><a href="aboutProject.do">Project 란</a></li>
								<li><a href="projectTrack.do">프로젝트 트랙</a></li>
							</ul>
						</li>
						<li><a href="notice.do">Notice<span class="subheader"> </span></a></li>
						
						
						
					</ul>
				</nav>
				
				<div class="clearfix" ></div>
				
			</div>
		</header>
		
		<!-- MAIN -->
		<div id="main">
				
			<!-- social -->
			<div id="social-bar">
				<ul>
					<li><a href="http://www.shinhan.ac.kr/"  title="visit Shinhan University"><img style="width:110%" src="img/icon/univIcon.png"  /></a></li>
					
				</ul>
				<ul style="margin-top:8px">
					<li><a href="http://stins.shinhan.ac.kr/irj/portal"  title="visit Shinhan Univ Total Information System"><img style="width:120%" src="img/icon/systemIcon.png"  /></a></li>
					
				</ul>
				
				<ul style="margin-top:8px">
					<li><a href="https://itc.shinhan.ac.kr/itc/"  title="visit IT Convergence Engineering!"><img style="width:120%" src="img/icon/mycomputer.png"  /></a></li>
					
				</ul>
				
			</div>
			<!-- ENDS social -->
			
		<script type="text/javascript">
			$('#logout').click(function(){
				alert("로그아웃 합니다");
			});
	
		</script>
</body>
</html>