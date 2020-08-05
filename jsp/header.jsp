<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCUBA DIVERS</title>
</head>
<body>
<header>
	<div id="login">
		<c:if test="${loginUser==null}">
			<ul>
				<li><a href="../join.do">회원가입</a></li>
				<li><a href="../login.do">로그인</a></li>	
			</ul>
		</c:if>
		<c:if test="${loginUser!=null}">			
			<ul>
				<li><input type="button" value="로그아웃" onclick="location.href='../BoardServlet?command=logout'"></li>
				<li style="color:white;">${loginUser.name}님 환영합니다.</li>
			</ul>
		</c:if>
	</div>
	<div id="logo">
		<div align="center">
			<a href="index.jsp">
				<img src="../images/logo.png" align="middle">
			</a>
		</div>
		<div>
			<a href="https://section.cafe.naver.com/" target="_blank"><img src="../images/cafe.png" align="right"> </a>
			<a href="https://open.kakao.com/o/goTwijmc" target="_blank"><img src="../images/kakao2.png" align="right"></a>
			<a href="https://www.instagram.com/?hl=ko" target="_blank"><img src="../images/instar.png" align="right"></a>
			<a href="https://section.blog.naver.com/BlogHome.nhn" target="_blank"><img src="../images/blog.png" align="right"></a>
		</div>
	</div>
	
	<div id="nav">
		<ul>
			<li><a href="../jsp/intro.jsp">소개</a></li>
			<li><a href="../jsp/edu.jsp">스쿠버다이빙 교육</a></li>
			<li><a href="../jsp/post.jsp">후기</a></li>
			<li><a href="../jsp/goods.jsp">상품</a></li>
			<li><a href="../jsp/community.jsp">커뮤니티</a></li>
		</ul>
	</div>
</header>
</body>
</html>