<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글 수정</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="../resources/css/write.css">
</head>

<body>
	<%@include file="header.jsp"%>
	
	<div id="board_list_write">
        <h2>글 수정</h2>
        
        <form class="write__in" action="/modify" method="post">
        	<input type="hidden" name="bno" value="${detail.bno}">
            <div class="write__header">
                <div class="write__header-select">
                	<c:choose>
						<c:when test="${detail.category eq '공지사항'}">
		                    <select name="category">
		                        <option value="notice" selected>공지사항(관리자만 선택 가능합니다)</option>
		                        <option value="order/pay">주문/결제</option>
		                        <option value="delivery">배송</option>
		                        <option value="refund/exchange/return">환불/교환/반품</option>
		                        <option value="goods">상품</option>
		                    </select>
						</c:when>                	
						<c:when test="${detail.category eq '주문/결제'}">
		                    <select name="category">
		                        <option value="notice">공지사항(관리자만 선택 가능합니다)</option>
		                        <option value="order/pay" selected>주문/결제</option>
		                        <option value="delivery">배송</option>
		                        <option value="refund/exchange/return">환불/교환/반품</option>
		                        <option value="goods">상품</option>
		                    </select>
						</c:when>                	
						<c:when test="${detail.category eq '배송'}">
		                    <select name="category">
		                        <option value="notice">공지사항(관리자만 선택 가능합니다)</option>
		                        <option value="order/pay">주문/결제</option>
		                        <option value="delivery" selected>배송</option>
		                        <option value="refund/exchange/return">환불/교환/반품</option>
		                        <option value="goods">상품</option>
		                    </select>
						</c:when>                	
						<c:when test="${detail.category eq '환불/교환/반품'}">
		                    <select name="category">
		                        <option value="notice">공지사항(관리자만 선택 가능합니다)</option>
		                        <option value="order/pay">주문/결제</option>
		                        <option value="delivery">배송</option>
		                        <option value="refund/exchange/return" selected>환불/교환/반품</option>
		                        <option value="goods">상품</option>
		                    </select>
						</c:when>                	
						<c:when test="${detail.category eq '상품'}">
		                    <select name="category">
		                        <option value="notice">공지사항(관리자만 선택 가능합니다)</option>
		                        <option value="order/pay">주문/결제</option>
		                        <option value="delivery">배송</option>
		                        <option value="refund/exchange/return">환불/교환/반품</option>
		                        <option value="goods" selected>상품</option>
		                    </select>
						</c:when>                	
                	</c:choose>
                </div>
                <input name="title" maxlength="50" class="write__header-title" type="text" value="${detail.title}" required>
            </div>

            <div class="write__box">
                <textarea maxlength="1000" name="content" cols="147" rows="30" required>${detail.content}</textarea>
            </div>

            <div class="write__btns">
                <button>임시 저장</button>
                <button>등록</button>
            </div>

            <div class="write__back">
                <a href="/detail?bno=${detail.bno}">돌아가기</a>
            </div>
        </form>
    </div>
        
</body>
</html>