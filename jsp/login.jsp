<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
	<title>SCUBA DIVERS</title>
	<link type="text/css" href="../css/login.css" rel="stylesheet">
	<link type="text/css" href="../css/common.css" rel="stylesheet">
	<link type="text/css" href="../css/common2.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="../js/index.js" type="text/javascript"></script>
</head>
<body>
<c:if test="${not empty param.join_complete}">
	<script>
		alert("${param.join_complete}");
	</script>
</c:if>
<c:if test="${param.alarm=='need'}">
	<script>
		alert("로그인을 해주세요.");
	</script>
</c:if>
<jsp:include page="header.jsp"/>
<section id="form">
	<div id="header" align="center">
		<img src="../images/header_logo.png" align="middle">
	</div>
	<div id="form_content" align="center">
		<div id="login_form">
			<h3>[로그인]</h3>
			<form  action="../login.do" method="post" name="frm">
				<table>
					<tr>
						<th>* 아이디</th>
						<td><input type="text" size="21" name="userid1"></td>
					</tr>
					<tr>
						<th>* 비밀번호</th> 
						<td><input type="password" size="21" name="pwd1"></td>
					</tr>
				</table>
				<input class="button1" type="submit" value="로그인" onclick="return loginCheck();">
				<input class="button2" type="reset" value="취소">
				<br><br>
				<c:if test="${param.code==0}"><p>비밀번호가 틀립니다.</p></c:if>
				<c:if test="${param.code==-1}"><p>존재하지 않는 회원입니다.</p></c:if>
			</form>
		</div>
		<div id="join_form">
			<h3>[회원가입]</h3>
			<form action="../join.do" method="post" name="frm">
				<table>
					<tr>
						<th>* 회원 ID</th>
						<td><input type="text" name="userid2">[ID 중복 검사]</td>				
					</tr>
					<tr>
						<th>* 비밀번호</th>
						<td><input type="password" name="pwd2"></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password"></td>
					</tr>
					<tr>
						<th>* 이름</th>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<th>성별</th>
						<td>
							<input type="radio" checked="checked" name="sex" value="0">남성
							<input type="radio" name="sex" value="1">여성
						</td>
					</tr>
					<tr>
						<th>집전화</th>
						<td>
							<input type="text" name="tel">
						</td>
					</tr>
					<tr>
						<th>휴대전화</th>
						<td>
							<input type="text" name="phone">
						</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>
							<input type="text" name="email">
						</td>
					</tr>
					<tr>
						<th rowspan="3">주소</th>
						<td>
							<input type="text" placeholder="우편번호">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" placeholder="도로명주소" name="address">
							<input type="text" placeholder="지번주소">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" placeholder="나머지 주소">
						</td>
					</tr>
				</table>
				<input class="button1" type="submit" value="회원가입" onclick="return joinCheck();">
				<input class="button2" type="reset" value="취소">
			</form>
		</div>
	</div>
	<div id="footer">	
		<ul>
			<li>
				<h3>공지사항</h3>
				<p>--------------------------</p>
				<p>2020년 투어 계획</p>
				<p>스쿠버다이빙 상품 할인 이벤...</p>
			</li>
			<li>
				<h3>교육문의</h3>
				<p>--------------------------</p>
				<p>-스쿠버교육 문의 드립니다.</p>
				<p>-프리다이빙 교육 문의드려요~</p>
				<p>-문의합니다...</p>
			</li>
			<li>
				<h3>고객센터</h3>
				<p>대표전화</p>
				<p>tel) 010.1111.1111</p>
				<a href="https://open.kakao.com/o/goTwijmc" target="_blank"><img src=../images/kakao.png></a>
				<p>카카오톡ID : Scuba</p>
			</li>
		</ul>
	</div>
</section>
<jsp:include page="footer.jsp"/>	
	<c:if test="${param.form=='login' }">
		<script>
			login(1);
		</script>
	</c:if>
	<c:if test="${param.form=='join' }">
		<script>
			document.getElementById("login_form").style.visibility="hidden";
			document.getElementById("join_form").style.visibility="visible";
		</script>
	</c:if>
	</body>
</html>