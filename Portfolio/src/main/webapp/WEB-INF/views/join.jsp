<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="../resources/css/join.css">

	
</head>
<body>
	<%@include file="header.jsp"%>
	
	<div id="join_container">   
	    <div class="join_title">
	        <h1>회원가입</h1>
	    </div>
	    <div class="join_title_sub">
	        <h2>사이트 이용정보 입력</h2>
	        <h3>* 표시는 필수 입력항목입니다</h3>
	    </div>
		<form action="/join" method="post">
			<table class="join_table">
				<tr>
					<th class="left">*회원명</th>
					<th class="right">
						<input type="text" class="input" name="name" id="user_name">
						<p id="user_id_name">실명을 입력해주세요</p>
						<p id="user_name_sp"></p>
					</th>
				</tr>
				<tr>
					<th class="left">*아이디</th>
					<th class="right">
						<input type="text" class="input" name="id" id="user_id">&nbsp&nbsp&nbsp<button disabled>중복체크</button>
						<p>영문자, 숫자 조합으로 최소 8자이상 입력하세요</p>
						<p id="user_id_sp"></p>
					</th>
				</tr>
				<tr>
					<th class="left">*비밀번호</th>
					<th class="right">
						<input type="password" name="password" id="user_pw1" class="input">
						<p>영문자, 숫자, 특수문자 조합으로 최소 8자 이상 입력하세요</p>
						<p id="user_pw1_sp"></p>
					</th>
				</tr>
				<tr>
					<th class="left">*비밀번호 확인</th>
					<th class="right">
						<input type="password" id="user_pw2" class="input">
						<p id="user_pw2_sp"></p>
						<p id="user_pw2_sp"></p>
					</th>
				</tr>
				<tr>
					<th class="left">*이메일</th>
					<th class="right">
						<input name="email" type="text" class="input" id="user_email">&nbsp&nbsp&nbsp<button disabled>중복체크</button>&nbsp&nbsp&nbsp
						<input type="checkbox" id=""> &nbsp&nbspE-mail을 수신합니다.
						<p id="user_email_sp"></p>
					</th>
				</tr>
				<tr>
					<th class="left">*휴대전화</th>
					<th class="right">
						<input type="text" name="phone" id="phone" class="input" onchange="phone()">&nbsp&nbsp&nbsp
						<input type="checkbox" name="" id=""> &nbspSMS을 수신합니다.
						<p id="user_phone_sp"></p>
					</th>
				</tr>
				<tr>
					<th class="left">가입경로</th>
					<th class="right">
						<input type="radio" name="path" class="radio"> 검색
						<input type="radio" name="path" class="radio"> 지인
						<input type="radio" name="path" class="radio"> 광고
						<input type="radio" name="path" class="radio"> SNS
						<input type="radio" name="path" class="radio"> 기타
					</th>
				</tr>
			</table>
			<div class="lastBtn">
				<button type="submit" class="submit" id="submit">확인</button>
				<button><a href="/login">취소</a></button>
			</div>
		</form>
	</div>
	    <script type="text/javascript" src="../resources/js/join.js"></script>
</body>

</html>