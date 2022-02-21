z<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="../resources/css/login.css">

</head>

<body>
	<%@include file="header.jsp"%>
	
	 <div id="login_container">
	   <div class="in_container">
	       <h1 class="login_title">로그인</h1>
	    <div class="log_in_box">
	        <div class="member">
	            <h2>회원 로그인</h2>
				<form action="/login" method="post">
					<div class="member_box1">
						<div class="id_ps">
							<div class="id_ps1"><input type="text" name="id" id="" placeholder="아이디"></div>
							<div><input type="password" name="password" id="" placeholder="비밀번호"></div>
						</div>
						<div class="loginBtn">
							<button type="submit">로그인</button>
						</div>
					</div>
				</form>
	            <input type="checkbox" name="" id="" class="id_save"> 아이디 저장
	            <div class="member_box2">
	                <div>
	                    <a href="/join">회원가입</a>
	                </div>
	                <div>
	                    <a href="">아이디 찾기</a>
	                </div>
	                <div>
	                    <a href="">비밀번호 찾기</a>
	                </div>
	            </div>
	            <div class="member_box3">
	                <ul>
	                    <li class="naver_btn"><a href=""></a></li>
	                    <li class="kakao_btn"><a href=""></a></li>
	                </ul>
	            </div>
	        </div><!--member-->
	        <div class="Nmember">
	            <h2>비회원 주문</h2>
	            <div class="NmemberBtn">
	                <a href="">비회원으로 주문하기</a>
	            </div>
	        </div><!--Nmember-->
	    </div>
	   </div>
	</div><!--container-->
</body>
</html>