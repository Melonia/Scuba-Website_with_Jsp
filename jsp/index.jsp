<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<title>SCUBA DIVERS</title>
<link type="text/css" href="../css/index.css" rel="stylesheet">
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
<jsp:include page="header.jsp"/>
<section id="index">
	<div id="picture">
		<div>
			<div><img src="../images/index_main1.png" width="1663px"></div>
			<div><img src="../images/index_main2.png" width="1663px"></div>
			<div><img src="../images/index_main3.png" width="1663px"></div>
		</div>
		<ul class="bullet">
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<div id="product">
		<ul>
			<li><a href="../jsp/goods.jsp"><img src="../images/product1.png"></a></li>
			<li><a href="../jsp/edu.jsp"><img src="../images/product2.png"></a></li>
			<li><a href="../jsp/goods.jsp"><img src="../images/product3.png"></a></li>
		</ul>
	</div>
			
	<div id="stone">
		<div><a href="intro.jsp?view=teacher"><b>강사 소개</b></a></div>
		<div><a href="../BoardServlet?command=bulletin_list"><b>사진 게시판</b></a></div>
		<div><a href="community.jsp"><b>공지 사항</b></a></div>
		<div><a href="post.jsp?command=view_list"><b>후기</b></a></div>
		<div><a href="goods.jsp?view=teacher"><b>상품</b></a></div>
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
</body>
</html>