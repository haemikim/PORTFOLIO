<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글쓰기</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="../resources/css/write.css">

</head>
<body>
	<%@include file="header.jsp"%>
	
	<div id="board_list_write">
        <h2>글쓰기</h2>
        
        <form class="write__in" action="/write" method="post">
            <div class="write__header">
                <div class="write__header-select">
                    <select name="category">
                    	<c:if test="${login.id == 'administrator1'}">
                        	<option value="notice">공지사항(관리자만 선택 가능합니다)</option>
                        </c:if>
                        <option value="order/pay" selected>주문/결제</option>
                        <option value="delivery">배송</option>
                        <option value="refund/exchange/return">환불/교환/반품</option>
                        <option value="goods">상품</option>
                    </select>
                </div>
                <input name="title" maxlength="50" class="write__header-title" type="text" placeholder="제목을 입력하세요." required>
                <input name="writer" value="${login.name}" type="hidden">
            </div>

            <div class="write__box">
                <textarea maxlength="1000" name="content" cols="147" rows="30" required></textarea>
            </div>

            <div class="write__btns">
                <button>임시 저장</button>
                <button>등록</button>
            </div>

            <div class="write__back">
                <a href="/list">돌아가기</a>
            </div>
        </form>
    </div>
</body>
</html>