<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCUBA DIVERS</title>
<link type="text/css" href="../css/edu.css" rel="stylesheet">
<link type="text/css" href="../css/common.css" rel="stylesheet">
<link type="text/css" href="../css/common2.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="../js/index.js" type="text/javascript"></script>
</head>
<body>

<jsp:include page="header.jsp"/>
	
<section id="edu">

	<div id="header" align="center">
		<img src="../images/header_logo.png" align="middle">
	</div>
	
	<div id="edu_nav">
		<ul>
			<li><button onclick="edu(1);">스쿠버다이빙 교육과정</button></li>
			<li><button onclick="edu(2);">스쿠버다이빙 교육신청</button></li>
		</ul>
	</div>
	
	<div id="edu_content">
	<div id="edu_curriculum">
	
	<!-- 스쿠버 다이빙 교육과정 -->
		<br><br>
		<h1>스쿠버 다이빙</h1><br>
		<h1>교육과정</h1>
		
		<ul>
		    <!-- 오픈워터 교육과정 -->
			<li>
				<h2 style='color:#ff0a00'><b>오픈워터 교육과정</b></h2>
				<h3><b>700,000원</b><small>(추가 비용 X)</small></h3>
				<p class="course"><small>Openwater Driver Course</small></p>
				<p class="course"><span>1박 2일 패키지 : 600,000원</span></p>
				<br>
				<p>------------------------------------------</p>
				<br>
				<p><b>대상 : </b> 만 10세 이상</p>
				<p><b>교육기간 : </b> 2박 3일 소요(권장)</p>
				<p><b>준비물 : </b> 수영복, 개인도구, 선크림</p>
				<p><b>최대수심 : </b> 18m</p>
				<p><b>교육장소 : </b> 강원도 고성, 양양, 제주도, 해외</p>
				<p><b>포함사항 : </b> 교재 및 라이센스 발급, 장비대여,</p>
				<p>보트이용, 이론수업, 수영장교육, 개방수역(4회),</p>
				<p> 중식(2회), 숙박, 수중기념사진, 로그북 증정</p>
				<p><b>불포함사항 : </b> 카풀비용, 교육외 개인비용</p>
				<p><b>기타 사항 : </b> 숙소는 4인 1실 기준이며,</p>
				<p>1인실(개인)숙박 또는 커플 혼숙 요청시에는</p>
				<p>숙박이용이 추가됩니다.</p>
				<br>
			</li>
			<!-- 오픈워터 교육과정 -->
			
			<!-- 어드벤스드 교육과정 -->
			<li>
				<h2 style='color:#ff0a00'><b>어드벤스드 교육과정</b></h2>
				<h3><b>600,000원</b><small>(추가 비용 X)</small></h3>
				<p class="course"><small>Advanced Openwater Driver Course</small></p>
				<p class="course"><span>1박 2일 패키지 : 550,000원</span></p>
				<br>
				<p>------------------------------------------</p>
				<br>
				<p><b>대상 : </b> 오픈워터 다이버 자격증 소지자</p>
				<p><b>교육기간 : </b> 1박 2일</p>
				<p><b>준비물 : </b> 수영복, 개인도구, 선크림</p>
				<p><b>최대수심 : </b> 35m</p>
				<p><b>교육장소 : </b> 스페셜티 코스에 따른 다양한 </p>
				<p>펀다이빙 포인트</p>
				<p><b>포함사항 : </b> 교재 및 라이센스 발급, 장비대여,</p>
				<p>보트이용, 이론수업, 개방수역(5회), 중식(1회), </p>
				<p>숙박, 수중기념사진, 로그북 증정</p>
				<p><b>불포함사항 : </b> 카풀비용, 교육외 개인비용</p>
				<p><b>기타 사항 : </b> 숙소는 4인 1실 기준이며,</p>
				<p>1인실(개인)숙박 또는 커플 혼숙 요청시에는</p>
				<p>숙박이용이 추가됩니다.</p>
				<br>
			</li>
			<!-- 어드벤스드 교육과정 -->
			
			<!-- 마스터 교육과정 -->
			<li>
				<h2 style='color:#ff0a00'><b>마스터 교육과정</b></h2>
				<h3><b>별도 문의</b></h3>
				<p class="course"><small>Drive Master Course</small></p>
				<br><br>
				<p>------------------------------------------</p>
				<br>
				<p><b>대상 : </b> 만19세 이상 / 레스큐 이상의 소지자</p>
				<p><b>준비물 : </b> 50회 이상의 기록된 다이빙, </p>
				<p>24개월 이내에 갱신된 응급처치 자격증, 수영복,</p>
				<p>샤워용품</p>
				<p><b>교육기간 : </b> 7일</p>
				<p><b>장소 : </b> 스페셜티 코스에 따른 다양한 </p>
				<p>펀다이빙 포인트</p>
				<p><b>불포함사항 : </b> 카풀비용, 교육외 개인비용</p>
				<p><b>기타 사항 : </b> 숙소는 4인 1실 기준이며,</p>
				<p>1인실(개인)숙박 또는 커플 혼숙 요청시에는</p>
				<p>숙박이용이 추가됩니다.</p>
				<br>
			</li>
			<!-- 마스터 교육과정 -->
			
			<!-- 나이트록스 교육과정 -->
			<li>
				
				<h2 style='color:#ff0a00'><b>나이트록스 교육과정</b></h2>
				<h3><b>200,000원</b><small>(추가 비용 X)</small></h3>
				<p class="course"><small>Nitrox Driver Course</small></p>
				<br>
				<p>------------------------------------------</p>
				<br>
				<p><b>대상 : </b> 오픈워터 다이버 자격증 이상의 소지자</p>
				<p><b>교육기간 : </b> 1일 소요</p>
				<p><b>준비물 : </b> 계산기, 필기도구</p>
				<p><b>교육장소 : </b> 서울/제주 교육센터</p>
				<p><b>포함사항 : </b> 교재 및 라이센트 발급, 이론수업, </p>
				<p>나이트롤스 해양실습(선택), 중식</p>
				<br><br><br><br><br><br>
			</li>
			<!-- 나이트록스 교육과정 -->
			
			<!-- 레스큐 교육과정 -->
			<li>

				<h2 style='color:#ff0a00'><b>레스큐 교육과정</b></h2>
				<h3><b>600,000원</b><small>(추가 비용X)</small></h3>
				<p class="course"><small>Rescue Driver Course</small></p>
				<br>
				<p>------------------------------------------</p>
				<br>
				<p><b>대상 : </b> 만 12세 이상 / 오픈워터 다이버 자격증 </p>
				<p>이상의 소지자</p>
				<p><b>교육기간 : </b> 1일 소요</p>
				<p><b>준비물 : </b> 수영복, 개인세면도구, 선크림</p>
				<p><b>교육장소 : </b> 이론교육, 수영장, 해양실습</p>
				<p><b>포함사항 : </b> 교재 및 라이센트 발급, 이론수업, </p>
				<p>장비대여, 제한수역교육, 개방수역교육(5회),</p> 
				<p>중식</p>
				<br><br><br><br><br><br>
			</li>
			<!-- 레스큐 교육과정 -->
		</ul>
		<!-- 스쿠버 다이빙 교육과정 -->
	</div>
		
		<!-- 스쿠버 다이빙 교육신청 -->
	<div id="edu_list">
		<h1>스쿠버 다이빙</h1><br>
		<h1>교육신청</h1><br><br>
		
	<!-- 교육신청 현황 테이블 FORM -->		
		<form>
			<figure>
				<figcaption>
					<h3 style='color:#00bfff'><b>스쿠버다이빙 세계에 오신걸 환영합니다!</b></h3>
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
						<c:forEach var="board" items="${boardList}">
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
			<input type="button" value="글쓰기" onclick="edu(3);">
		</form>	
	</div>
	<!-- 교육신청 현황 테이블 FORM -->
	
	<!-- 교육신청 글쓰기 FORM -->
	<div id="edu_application">
		<h1>스쿠버 다이빙</h1><br>
		<h1>교육신청</h1><br><br>
   	
		<form action="../BoardServlet" name="frm" method="get">
			<input type="hidden" name="command" value="board1_write">
			<figure>
				<figcaption> 
					<h3 style='color:#00bfff'><b>스쿠버다이빙 세계에 오신걸 환영합니다!</b></h3><br>
				</figcaption>
				<table>
					<tr>
						<th>제목</th>
						<td>&nbsp;&nbsp;<input type="text" name="title" size="40" placeholder="내용을 입력해주세요" ></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>&nbsp;&nbsp;<input type="password" name="pass" size="40" placeholder="내용을 입력해주세요" ></td>
					</tr>			
					<tr>
						<th>이름</th>
						<td>&nbsp;&nbsp;<input type="text" name="name" size="40" placeholder="내용을 입력해주세요" ></td>
					</tr>		
					<tr>
						<th>연락처</th>
						<td>&nbsp;&nbsp;<input type="tel" name="phone" size="40" placeholder="내용을 입력해주세요" ></td>
					</tr>
					<tr>
						<th>교육지점</th>
						<td>&nbsp;&nbsp;
							<select name="space" style="width:130px">
								<option selected disabled hidden>교육지점</option>
								<option value="0">서울</option>
								<option value="1">제주</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>교육과정</th>
						<td>&nbsp;&nbsp;
							<select name="subject" style="width:130px">
								<option selected disabled hidden>교육과정</option>
								<option value="0">오픈워터</option>
								<option value="1">어드벤스드</option>
								<option value="2">마스터</option>
								<option value="3">레스큐</option>
								<option value="4">나이트록스</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>패키지신청</th>
						<td>&nbsp;&nbsp;
							<select name="pack" style="width:130px">
								<option selected disabled hidden>	패키지신청</option>
								<option value="0">오픈워터</option>
								<option value="1">어드벤스드</option>	
							</select>
						</td>
					</tr>
					<tr style="height:0">
						<th>
							교육시간
						</th>
						<td><br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="radio" name="time" value="0">&nbsp;&nbsp;평일오전 (월 ~ 금요일 : 09:00 ~ 13:30)</label>
							<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="radio" name="time" value="1">&nbsp;&nbsp;평일오후 (월 ~ 금요일 : 13:30 ~ 17:30)</label>
							<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="radio" name="time" value="2">&nbsp;&nbsp;평일저녁 (월 ~ 금요일 : 19:00 ~ 22:00)</label>
							<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="radio" name="time" value="3">&nbsp;&nbsp;토요일오전 (토요일 : 09:00 ~ 13:30)</label>
							<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="radio" name="time" value="4">&nbsp;&nbsp;토요일오후 (토요일 : 13:30 ~ 18:00)</label>
							<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="radio" name="time" value="5">&nbsp;&nbsp;일요일오전 (일요일 : 09:00 ~ 13:00)</label>
							<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="radio" name="time" value="6">&nbsp;&nbsp;일요일오후 (일요일 : 09:00 ~ 13:00)</label>
							<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="radio" name="time" value="7" onclick='Nfocus();'>&nbsp;&nbsp;개인강습 (원하는 시간과 날짜를 적어주세요)</label>
							<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="focus">
							<br><br>
						</td>
					</tr>
					<tr>
						<th>입금계좌</th>
						<td>&nbsp;&nbsp;한국은행 111-1111-1111-11(QWERTY)</td>
					</tr>
				</table>	
			</figure>

			<input class="button1" type="submit" value="신청">
			<input class="button2" type="reset" value="취소">
			<script>
				function Nfocus(){
    				document.getElementsByName('focus')[0].focus();
				}
			</script>
		</form>
	</div>
	<!-- 교육신청 글쓰기 FORM -->
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
		document.getElementById("edu_curriculum").style.visibility='hidden';
		document.getElementById("edu_list").style.visibility='visible';
		document.getElementById("edu_application").style.visibility='hidden';
	</script>
</c:if>
</body>
</html>