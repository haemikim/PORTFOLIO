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
                   <select name="category">
                       <option value="notice"<c:out value="${detail.category eq 'notice'?'selected':''}" />>notice(관리자만 선택 가능합니다)</option>
                       <option value="주문/결제" <c:out value="${detail.category eq '주문/결제'?'selected':''}" />>주문/결제</option>
                       <option value="배송" <c:out value="${detail.category eq 'delivery'?'selected':''}" />>배송</option>
                       <option value="환불/교환/반품" <c:out value="${detail.category eq 'refund/exchange/return'?'selected':''}" />>환불/교환/반품</option>
                       <option value="상품" <c:out value="${detail.category eq 'goods'?'selected':''}" />>상품</option>
                   </select>             	
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