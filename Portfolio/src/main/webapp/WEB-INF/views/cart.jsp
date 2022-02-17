<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../resources/css/cart.css">
    <link rel="stylesheet" href="../resources/css/header.css">
    <script src="../resources/js/all.min.js"></script>
</head>
<body>
<%@include file="header.jsp"%>

<div id="cart">
    <div class="left">
        <div class="profile">
            <div class="loginImg">
                <i class="fas fa-user-circle fa-9x"></i>
                <a href="#"><i class="fas fa-cog fa-3x"></i></a>
            </div>
            <c:if test="${login!=null}"><p>${login.id}님 안녕하세요</p></c:if>
            
        </div>
        <ul>
            <li class="ulf"><a href="#">나의 쇼핑</a></li>
            <div class="horizon"></div>
            <li class="ulf"><a href="#">관심 상품</a></li>
                <ul>
                    <li class="uls"><a href="#">장바구니 상품</a></li>
                    <li class="uls-b"><a href="#">최근 본 상품</a></li>
                </ul>
                <div class="horizon"></div>
            <li class="ulf"><a href="#">상품 리뷰</li>
                <ul>
                    <li class="uls"><a href="#">작성 가능한 리뷰</a></li>
                    <li class="uls-b"><a href="#">내가 작성한 리뷰</a></li>
                </ul>
                <div class="horizon"></div>
            <li class="ulf"><a href="#">상품 Q&A</a></li>
            <div class="horizon"></div>
            <li class="ulf"><a href="#">무료 체험</a></li>
            <div class="horizon"></div>
            <li class="ulf"><a href="#">나의 설정</a></li>
            <div class="horizon"></div>
        </ul>
    </div><!--left-->
    <div class="right">
        <ul class="top">
            <li class="ulft">
                <a href="">
                    <i class="fas fa-truck fa-3x"></i>
                    <p>주문·배송</p>
                    <p>0</p>
                </a>
            </li>
            <div class="borderight"></div>
            <li class="ulft">
                <a href="">
                    <i class="fas fa-money-check fa-3x"></i>
                    <p>보유 쿠폰</p>
                    <p>0</p>
                </a>
            </li>
            <div class="borderight"></div>
            <li class="ulft">
                <a href="">
                    <i class="fas fa-coins fa-3x"></i>
                    <p>포인트</p>
                    <p>0</p>
                </a>
            </li>
            <div class="borderight"></div>
            <li class="ulft">
                <a href="">
                    <i class="fas fa-feather fa-3x"></i>
                    <p>혜택 전체 보기</p>
                </a>
            </li>
        </ul>
        <ul class="bottom">
            <li class="ulfs">
                <h2>장바구니 상품</h2>
                <div>
                    <p class="u_text"><span>담아놓은 상품</span>이 없습니다</p>
                    <p>관심있는 상품을 담아두면<br>마이페이지에서 편하게 확인하고 관리할 수 있습니다</p>
                </div>
            </li>
            <li class="ulfs">
                <h2>최근 본 상품</h2>
                <div>
                    <p class="u_text"><span>최근 본 상품</span>이 없습니다</p>
                    <p>CAKEY에서 클릭해본 상품은<br>마이페이지에서 다시 확인할 수 있습니다.</p>
                </div>
            </li>
            <li class="ulfs">
                <h2>상품 리뷰</h2>
                <div>
                    <p class="u_text"><span>작성한 리뷰</span>가 없습니다</p>
                </div>
            </li>
        </ul>
    </div>
</div>
</body>
</html>