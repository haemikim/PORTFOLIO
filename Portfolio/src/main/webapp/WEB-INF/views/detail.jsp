<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시물</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="../resources/css/detail.css">
       
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   	<script src="https://kit.fontawesome.com/a3ecbab334.js"></script>
    <script type="text/javascript" src="../resources/js/detail.js"></script>
    
</head>
<body>
   <%@include file="header.jsp"%>
   
   <div id="board_list_page">
       <div class="board__back">
           <a href="/list"><i class="fas fa-arrow-left fa-3x"></i></a>
       </div>
   
       <div class="board__in">
           <div class="board__header">
               <div class="board__left">
                   <h2><span class="boardName">&lt${detail.category}&gt</span> ${detail.title}</h2>
                   <p>
                       <span>${detail.writer} &nbsp</span>
                       <span>${detail.regdate} &nbsp</span>
                       <span>조회 ${detail.cnt}</span>
                   </p>
               </div>
   
               <div class="board__right">
                   <a href="#"><i class="fas fa-share-alt-square fa-2x"></i></a>
                   <a href="#"><i class="fas fa-print fa-2x"></i></a>
               </div>
           </div>
         
           <div class="board__content">
               ${detail.content}
               <c:if test="${detail.writer == login.name}">
               <div class="board__btns">
                  <a href="/modify?bno=${detail.bno}">글 수정</a>
                  <a href="/remove?bno=${detail.bno}">글 삭제</a>
               </div>
               </c:if>
           </div>
           
           <!-- 댓글 영역 -->
           <div class="board__reply">
              <input id="bno" type="hidden" value="${detail.bno}">
              <c:if test="${login.id == 'administrator1'}">
	              <h3>댓글</h3>
	              <div>
	                 <textarea id="reply" maxlength="1000" cols="125" rows="3" required></textarea>
	                 <div class="board__reply-bottom">
	                    <label for="replyer">작성자</label>
	                    <input id="replyer" type="text" value="${login.name}"/>
	                    <button id="addReply">댓글 작성</button>
	                 </div>
	              </div>
              </c:if>
              <div>
                 <input id="session" type="hidden" value="${login.id}"/>
                 <div id="relist">
                 </div>
              </div>
              
              <!-- Modal -->
               <div class="modal">
               <div class="modal-content">
                   <div class="modal-header">
                       <h4 class="modal-title">댓글 수정하기</h4>
                   </div>
                   <div class="modal-body">
                      <div class="modal-replyer">
                         <label>Replyer</label>
                         <input type="text" name="replyer">
                        </div>
                        <div class="modal-reply">
                         <label>Reply</label>
                         <input type="text" name="reply">
                        </div>
                   </div>
                   <div class="modal-footer">
                       <button type="button" id="insideModBtn">수정하기</button>
                       <button type="button" id="insideCloseBtn">Close</button>
                   </div>
               </div>   <!-- .modal-content 끝 -->
               </div>   <!-- .modal 끝 -->
                
           </div>
           
           <div class="board__list">
               <div class="board__list-box">
                   <ul>    
                      <c:if test="${detailPrev != null}">
                       <li class="listOn">
                           <div>
                               <p class="listName"><a href="/detail?bno=${detail.bno-1}">이전 글</a></p>
                               <p><a href="/detail?bno=${detail.bno-1}">${detailPrev.title}</a></p>
                           </div>
                       </li>
                       </c:if>
                       <c:if test="${detailNext != null}">
                       <li class="listOn">
                           <div>
                               <p class="listName"><a href="/detail?bno=${detail.bno+1}">다음 글</a></p>
                               <p><a href="/detail?bno=${detail.bno+1}">${detailNext.title}</a></p>
                           </div>
                       </li>
                       </c:if>
                   </ul>
               </div>
           </div>
       </div>
   </div>
</body>
</html>