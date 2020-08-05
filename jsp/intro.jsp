<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCUBA DIVERS</title>
<link type="text/css" href="../css/intro.css" rel="stylesheet">
<link type="text/css" href="../css/common.css" rel="stylesheet">
<link type="text/css" href="../css/common2.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="../js/index.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<section id="intro">
	<div id="header" align="center">
		<img src="../images/header_logo.png" align="middle">
	</div>
	
	<div id="intro_nav">
		<ul>
			<li><button onclick="intro(1);">인사말</button></li>
			<li><button onclick="intro(2);">강사진 소개</button></li>
		</ul>
	</div>
	
	<div id="intro_content">
		<div id="greeting">
			<h3>인사말</h3>
			<textarea class="greeting"  cols="12" rows="25" readonly="readonly" disabled>어푸어푸....퐁당퐁당....
			</textarea>
		</div>
		<div id="teacher">
			<table>
				<tr>
					<td>
						<figure>
							<img src="../images/sponge.png" alt="스폰지밥">
							<figcaption>
								<h2>이주호</h2>
								<p>귀는 생의 찬미를 듣는다 그것은 웅대한 관현</p>
								<p>악이며 미묘한 교향악이다 뼈 끝에 스며들어</p>
								<p>가는 열락의 소리다 이것은 피어니가 전인 	유</p>
								<p>소년에게서 구하지 못할 바이며 시들어 다는</p>
								<p>노년에게서 구하지 못할 바이며 오직 우리 청</p>
								<p>춘에서만 구할 수 있다.</p>
							</figcaption>
						</figure>
					</td>
					<td>
						<figure>	
							<img src="../images/jingjinge.png" alt="징징이">
							<figcaption>
								<h2>김대영</h2>
								<p>귀는 생의 찬미를 듣는다 그것은 웅대한 관현</p>
								<p>악이며 미묘한 교향악이다 뼈 끝에 스며들어</p>
								<p>가는 열락의 소리다 이것은 피어니가 전인 유</p>
								<p>소년에게서 구하지 못할 바이며 시들어 다는</p>
								<p>노년에게서 구하지 못할 바이며 오직 우리 청</p>
								<p>춘에서만 구할 수 있다.</p>
							</figcaption>
						</figure>
					</td>
				</tr>
				<tr>
					<td>
						<figure>	
							<img src="../images/ddoongE.png" alt="뚱이">
							<figcaption>	
								<h2>권재우</h2>
								<p>귀는 생의 찬미를 듣는다 그것은 웅대한 관현</p>
								<p>악이며 미묘한 교향악이다 뼈 끝에 스며들어</p>
								<p>가는 열락의 소리다 이것은 피어니가 전인 유</p>
								<p>소년에게서 구하지 못할 바이며 시들어 다는</p>
								<p>노년에게서 구하지 못할 바이며 오직 우리 청</p>
								<p>춘에서만 구할 수 있다.</p>
							</figcaption>
						</figure>
					</td>
				</tr>
			</table>
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
<c:if test="${param.view=='teacher'}">
	<script>
		intro(2);
	</script>
</c:if>
</body>
</html>