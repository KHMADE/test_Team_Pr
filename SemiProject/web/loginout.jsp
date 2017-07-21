<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, member.model.vo.*"%>
<%
	Member member = (Member) session.getAttribute("member");
%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="ko"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="ko">
<!--<![endif]-->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>로그인 페이지 - MAːDÆ</title>
<meta name="description" content="">
<link rel="shortcut icon" href="images/icon.ico">
<!-- CSS FILES -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/style.css"
	media="screen" data-name="skins">
<link rel="stylesheet" href="css/layout/wide.css" data-name="layout">

<link rel="stylesheet" href="css/fractionslider.css" />
<link rel="stylesheet" href="css/style-fraction.css" />

<link rel="stylesheet" type="text/css" href="css/switcher.css"
	media="screen" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!--Start Header-->
	<header id="header" class="clearfix">
		<div id="top-bar">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 hidden-xs top-info">
						<!--                        <span><i class="fa fa-phone"></i>Phone: (123) 456-7890</span>
                        <span><i class="fa fa-envelope"></i>Email: firerain4@naver.com</span>-->
					</div>
					<div class="col-sm-5 top-info">
					</div>
				</div>
			</div>
		</div>
		<!-- LOGO bar -->
		<div id="logo-bar" class="clearfix">
			<!-- Container -->
			<div class="container">
				<div class="row">
					<!-- Logo / Mobile Menu -->
					<div class="col-xs-12">
						<div id="logo" style="width: 170px;">
							<h1>
								<a href="index.html"><img src="images/logo.png" alt="Eve" /></a>
							</h1>
						</div>
					</div>
				</div>
			</div>
			<!-- Container / End -->
		</div>
		<!--LOGO bar / End-->

		<!-- Navigation
================================================== -->
		<div class="navbar navbar-default navbar-static-top" role="navigation">
			<div class="container">
				<div class="row">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.html">Home</a></li>
							<li><a href="views/notice/공지사항 main.html">공지사항</a></li>
							<li><a href="#">DIY 상품</a>
								<ul class="dropdown-menu">
									<li><a href="portfolio_2.html">Designed</a></li>
									<li><a href="portfolio_2.html">Parts</a></li>
								</ul></li>

							<li><a href="views/mypage/order_page.html">마이페이지</a>
								<ul class="dropdown-menu">
									<li><a href="views/mypage/myinfo.html">My page</a></li>
									<li><a href="views/mypage/order_page.html">주문내역</a></li>
									<li><a href="views/mypage/myinfo.html">회원정보수정</a></li>
									<li><a href="views/mypage/myinfo.html">쪽지함</a></li>
									<li><a href="views/mypage/myinfo.html">1:1문의</a></li>
								</ul></li>
							<li><a href="views/faq/faq.html">FAQ</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
				</div>
				<!--/.row -->
			</div>
			<!--/.container -->
		</div>
	</header>
	<!--End Header-->

	<!--start wrapper-->
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<h2>로그인 페이지 - MAːDÆ</h2>
					</div>
				</div>
			</div>
		</section>
		<!--start info service-->
		<section class="content">
			<div class="container">
				<%
					if (member == null) {
				%>
				<form action="login" method="post">
					<table>
						<tr>
							<td>아이디 : </td>
							<td><input type="text" name="id"></td>
						</tr>
						<tr>
							<td>비밀번호 : </td>
							<td><input type="password" name="pwd"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" class="btn" value="로그인">&nbsp;&nbsp;<a
								href="views/user/%ED%9A%8C%EC%9B%90%EA%B0%80%EC%9E%85%ED%8E%98%EC%9D%B4%EC%A7%80.html">&nbsp;회원가입&nbsp;</a></td>
						</tr>
					</table>
				</form>
				<%
					} else {
				%>
				<table>
					<tr>
						<td>환영합니다. <%=member.getName()%>님!!!!
						</td>
						<td><a href="logout">로그아웃</a></td>
					</tr>
				</table>
				<%
					}
				%>
			</div>
		</section>
	</section>
	<!--end wrapper-->

	<!--start footer-->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span>About Us</span>
						</h4>
					</div>
					<div class="widget_content">
						<p>본 프로젝트는 KH정보교육원 [NCS]웹 개발 응용SW엔지니어 양성과정_2주차 오후반 3조에서 만든
							Semi 프로젝트입니다.</p>
						<ul class="contact-details-alt">
							<li><i class="fa fa-map-marker"></i>
								<p>
									<strong>Address</strong>: 서울시 강남구 역삼동
								</p></li>
							<li><i class="fa fa-user"></i>
								<p>
									<strong>Phone</strong>: 010-5688-2293
								</p></li>
							<li><i class="fa fa-envelope"></i>
								<p>
									<strong>Email</strong>: <a href="#">firerain4@naver.com</a>
								</p></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span>Recent Posts</span>
						</h4>
					</div>
					<div class="widget_content">
						<ul class="links">
							<li><i class="fa fa-caret-right"></i> <a href="#">Aenean
									commodo ligula eget dolor<span>November 07, 2014</span>
							</a></li>
							<li><i class="fa fa-caret-right"></i> <a href="#">Temporibus
									autem quibusdam <span>November 05, 2014</span>
							</a></li>
							<li><i class="fa fa-caret-right"></i> <a href="#">Debitis
									aut rerum saepe <span>November 03, 2014</span>
							</a></li>
							<li><i class="fa fa-caret-right"></i> <a href="#">Et
									voluptates repudiandae <span>November 02, 2014</span>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span>Twitter</span>
						</h4>

					</div>
					<div class="widget_content">
						<ul class="tweet_list">
							<li class="tweet_content item"><i class="fa fa-twitter"></i>
								<p class="tweet_link">
									<a href="#">@jquery_rain </a> Lorem ipsum dolor et, consectetur
									adipiscing eli
								</p> <span class="time">29 September 2014</span></li>
							<li class="tweet_content item"><i class="fa fa-twitter"></i>
								<p class="tweet_link">
									<a href="#">@jquery_rain </a> Lorem ipsum dolor et, consectetur
									adipiscing eli
								</p> <span class="time">29 September 2014</span></li>
							<li class="tweet_content item"><i class="fa fa-twitter"></i>
								<p class="tweet_link">
									<a href="#">@jquery_rain </a> Lorem ipsum dolor et, consectetur
									adipiscing eli
								</p> <span class="time">29 September 2014</span></li>
						</ul>
					</div>
					<div class="widget_content">
						<div class="tweet_go"></div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span>Flickr Gallery</span>
						</h4>
					</div>
					<div class="widget_content">
						<div class="flickr">
							<ul id="flickrFeed" class="flickr-feed"></ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--end footer-->

	<section class="footer_bottom">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 ">
					<p class="copyright">
						&copy; Copyright 2017 MAːDÆ | Powered by <a
							href="http://www.jqueryrain.com/">jQuery Rain</a>
					</p>
				</div>

				<div class="col-lg-6 ">
					<div class="footer_social">
						<ul class="footbot_social">
							<li><a class="fb" href="#." data-placement="top"
								data-toggle="tooltip" title="Facbook"><i
									class="fa fa-facebook"></i></a></li>
							<li><a class="twtr" href="#." data-placement="top"
								data-toggle="tooltip" title="Twitter"><i
									class="fa fa-twitter"></i></a></li>
							<li><a class="dribbble" href="#." data-placement="top"
								data-toggle="tooltip" title="Dribbble"><i
									class="fa fa-dribbble"></i></a></li>
							<li><a class="skype" href="#." data-placement="top"
								data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
							<li><a class="rss" href="#." data-placement="top"
								data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.cookie.js"></script>
	<!-- jQuery cookie -->
	<script type="text/javascript" src="js/styleswitch.js"></script>
	<!-- Style Colors Switcher -->
	<script src="js/jquery.fractionslider.js" type="text/javascript"
		charset="utf-8"></script>
	<script type="text/javascript" src="js/jquery.smartmenus.min.js"></script>
	<script type="text/javascript"
		src="js/jquery.smartmenus.bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
	<script type="text/javascript" src="js/jflickrfeed.js"></script>
	<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="js/swipe.js"></script>
	<script type="text/javascript" src="js/jquery-scrolltofixed-min.js"></script>

	<script src="js/main.js"></script>

	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
	<script>
		$(window).load(function() {
			$('.slider').fractionSlider({
				'fullWidth' : true,
				'controls' : true,
				'responsive' : true,
				'dimensions' : "1920,450",
				'increase' : true,
				'pauseOnHover' : true,
				'slideEndAnimation' : true,
				'autoChange' : true
			});
		});
	</script>
</body>
</html>