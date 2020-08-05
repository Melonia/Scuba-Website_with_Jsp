<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCUBA DIVERS</title>
<link type="text/css" href="../css/common.css" rel="stylesheet">
<link type="text/css" href="../css/common2.css" rel="stylesheet">
<link type="text/css" href="../css/goods.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="../js/index.js" type="text/javascript"></script>
</head>
<body>
<c:if test="${empty param.command}">
	<script>
		location.href='../BoardServlet?command=board3_list';
	</script>
</c:if>
<jsp:include page="header.jsp"/>

<section id="goods">

	<div id="header" align="center">
		<img src="../images/header_logo.png" align="middle">
	</div>	
	
	<div id="goods_nav">
		<ul>
			<li><button onclick="goods(1)">스쿠버 장비</button></li>
			<li><button onclick="goods(2)">기타</button></li>
		</ul>
	</div>
	
	<div id="goods_content">
		<h1><b>스쿠버 장비</b></h1><br><br><br>
		<p>스쿠버다이빙 장비는 직접 파는것이 아니고 행사하는 상품을 한정적으로 판매하는 것이기 때문에</p>
		<p>더욱 저렴하게 구입 가능합니다!</p>
		<p>------------------------------------------------------------------------------</p>
		<div id="goods_list">
			<form action="goods.jsp"method="post">	
				<table>
					<tr>
						<%int num = 0; %>
						<c:forEach var="board" items="${boardList3}">
							<c:if test="${board.pictureurl1!='no-image'}">
								<td><img width="369px" height="251px" src="../upload/${board.pictureurl1}"><%num++; %></td>
							</c:if>
							<%if(num==3){ %>
								</tr><tr>
							<%} %>
							<%if(num==6)break; %>
								<c:if test="${board.pictureurl2!='no-image'}">
									<td><img width="369px" height="251px" src="../upload/${board.pictureurl2}"><%num++; %></td>
								</c:if>	
							<%if(num==3){ %>
								</tr><tr>
							<%} %>
							<%if(num==6)break; %>	
						</c:forEach>
					</tr>			
				</table>
				<input type="button" value="글쓰기" onclick="location.href='../BoardServlet?command=board3_write_form'">
			</form>
		</div>
		<div id="goods_application">
			<form action="../BoardServlet?command=board3_write" method="post" encType="multipart/form-data">
				<input type="hidden" name="userid" value="${loginUser.userid}">
				<table>
					<tr>
						<th>이름</th>
						<td>&nbsp;&nbsp;<input type="text" name="name" value="${loginUser.name}" readonly size="40" placeholder="이름을 입력해주세요"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>&nbsp;&nbsp;<input type="password" name="pass" value="${loginUser.pwd}" readonly size="40" placeholder="비밀번호를 입력해주세요"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td>&nbsp;&nbsp;<input type="text" name="title" size="40" placeholder="제목을 입력해주세요"></td>
					</tr>
					<tr>
						<th>내용(최대 300자)</th>
						<td>&nbsp;&nbsp;<textarea id="textTest" name="content" class="content"></textarea></td>
					</tr>
					<tr>
						<th>첨부파일1</th>
						<td>&nbsp;&nbsp;<input name="file1" type="file"></td>
					</tr>
					<tr>
						<th>첨부파일2</th>
						<td>&nbsp;&nbsp;<input name="file2" type="file"></td>
					</tr>				
				</table>
				<input class="button1" type="submit" value="작성">
				<input class="button2" type="reset" value="취소">
			</form>
		</div>
		<script type="text/javascript" 
				src="../naver-smarteditor2-ca95d21/demo/js/service/HuskyEZCreator.js"
				charset="utf-8">
		</script>
		<script type="text/javascript">
			var oEditors=[];
			nhn.husky.EZCreator.createInIFrame({oAppRef:oEditors,
				elPlaceHolder:"textTest",
				sSkinURI:"../naver-smarteditor2-ca95d21/demo/SmartEditor2Skin.html",
				htParams:{
					bUseToolbar:true,
					bUseVerticalResizer:true,
					bUseModeChanger:true
				}
			});
			function submitContents(){
				oEditors.getById["class_tutorIntroduce"].exec("UPDATE_CONTENTS_FIELD",[]);
			}
		</script>
		<div id="goods_detail">
		
		</div>
		
		<div id="goods_etc">
			<ul>
				<li>
					<br>
					<h2 style='color:#ff0a00'><b>스쿠버다이빙 장비 세트</b></h2>
					<h3><b>40,000원 (1일)</b></h3>
					<br>
					<p>-----------------------------------</p>
					<br>
					<br>
					<p>-- 구성품 --</p>
					<p>슈트</p>
					<p>마스크</p>
					<p>스노쿨</p>
					<p>부츠, 장갑, 모자</p>
					<p>호흡기, BCD</p>
					<br><br>		
				</li>
				<li>
					<br>
					<h2 style="color:#ff0a00"><b>프리다이빙 장비 세트</b></h2>
					<h3><b>15,000원 (1일))</b></h3>
					<br>
					<p>-----------------------------------</p>
					<br>
					<br>
					<p>-- 구성품 --</p>
					<p>슈트</p>
					<p>마스크</p>
					<p>스노쿨</p>
					<br><br><br><br><br>
				</li>
				<li>
					<br>
					<h2 style="color:#ff0a00"><b>프리다이빙 장비 세트</b></h2>
					<h3><b>15,000원 (1일))</b></h3>
					<br>
					<p>-----------------------------------</p>
					<br>
					<br>
					<p>-- 구성품 --</p>
					<p>랜턴</p>
					<br><br><br><br><br><br><br>					
				</li>
			</ul>
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
<c:if test="${param.command=='view_application'}">
	<script>
		goods_write();
	</script>
</c:if>
<c:if test="${param.command=='view_list'}">
	<script>
		goods(1);
	</script>
</c:if>
</body>
</html>