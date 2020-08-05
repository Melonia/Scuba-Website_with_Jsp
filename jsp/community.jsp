<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCUBA DIVERS</title>
<link type="text/css" href="../css/common.css" rel="stylesheet">
<link type="text/css" href="../css/common2.css" rel="stylesheet">
<link type="text/css" href="../css/community.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="../js/index.js" type="text/javascript"></script>
</head>
<body>
<c:if test="${empty param.command}">
	<script>
		location.href="../BoardServlet?command=board4_list";
	</script>
</c:if>
<jsp:include page="header.jsp"/>
	
<section id="community">

	<div id="header" align="center">
		<img src="../images/header_logo.png" align="middle">
	</div>
	
	<div id="community_nav">
		<ul>
			<li><button onclick="community(1)">공지사항</button></li>
			<li><button onclick="location.href='../BoardServlet?command=bulletin_list'">사진게시판</button></li>
		</ul>
	</div>
	
	<div id="community_content">
	
		<div id="community_list">
			
			<h1><b>공지사항</b></h1>
			<p>-------------------</p>
		
			<form action="community.jsp" method="post">
				<figure>
					<figcaption>
						<h3 style='color:#00bfff'><b>Total 1건 1페이지</b></h3>
						<br>
					</figcaption>
					<table border="1">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="board" items="${boardList4}">
								<tr>
									<th>${board.num}</th>
									<td>${board.title}</td>
									<td>${board.name}</td>
									<td><fmt:formatDate value="${board.writedate}" type="date"/></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</figure>
				<br><br>
				<input type="button" value="글쓰기" onclick="location.href='../BoardServlet?command=board4_write_form'">
			</form>	
		</div>
	<div id="community_application">
		<h1><b>공지사항</b></h1>
		<p>-------------------</p>
		<form action="../BoardServlet?command=board4_write" method="post" encType="multipart/form-data">
			<input type="hidden" name="userid" value="${loginUser.userid}">
			<table>
				<tr>
					<th>이름</th>
					<td>&nbsp;&nbsp;<input type="text" name="name" value="${loginUser.name}" size="40" placeholder="이름을 입력해주세요"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>&nbsp;&nbsp;<input type="password" name="pass" value="${loginUser.pwd}" size="40" placeholder="비밀번호를 입력해주세요"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td>&nbsp;&nbsp;<input name="title" type="text" size="40" placeholder="제목을 입력해주세요"></td>
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

	<div id="community_detail">
		<h1><b>공지사항</b></h1>
		<p>-----------------</p>
	</div>
	
	<div id="community_board">
		<h1><b>사진 게시판</b></h1>
		<br>
		<p>-----------------------</p>
		<table border="10">
			<tr>
				<%int num = 0; %>
				<c:forEach var="board" items="${bulletin}">
					<c:if test="${board.pictureurl!='no-image'}">
						<td><img width="369px" height="251px" src="../upload/${board.pictureurl}"><%num++; %></td>
					</c:if>
					<%if(num==3){ %>
						</tr><tr>
					<%} %>
					<%if(num==6)break; %>	
				</c:forEach>
				<c:if test="<%=3<num%>">
					<c:forEach begin="1" end="<%=6-num%>">
						<td></td>
					</c:forEach>
				</c:if>
				<c:if test="<%=num<3%>">
					<c:forEach begin="1" end="<%=3-num%>">
						<td></td>
					</c:forEach>
				</c:if>
				<c:if test="<%=num==3%>">
					<td></td>
					<td></td>
					<td></td>
				</c:if>
			</tr>			
			<c:if test="<%=num<3%>">
				<tr>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</c:if>
		</table>
		<input type="button" value="사진 올리기" onclick="community_upload()">
	</div>
	
	<div id="community_upload">
	
		<h1><b>사진 게시판</b></h1>
		<br>
		<p>----------------------</p>	
	
		<form action = "../BoardServlet?command=bulletin_write" name="frm" enctype="multipart/form-data" method="post">
			<div>
				<input type="file" style="width:1663px; height:550px;" name="file" />
			</div>
			<input type="submit" value="사진 업로드">
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
<c:if test="${param.command=='view_list'}">
	<script>
			community(1);
	</script>
</c:if>
<c:if test="${param.command=='view_application'}">
	<script>
		community(2);
	</script>
</c:if>
<c:if test="${param.command=='view_bulletin'}">
	<script>
		community(3);
	</script>
</c:if>
</body>
</html>