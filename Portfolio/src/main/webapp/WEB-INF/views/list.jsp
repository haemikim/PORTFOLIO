<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COMMUNITY</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="../resources/css/list.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js">
    </script>
    <script type="text/javascript" src="../resources/js/list.js"></script>
</head>

<body>
	<%@include file="header.jsp" %>
	
	<div id="board_contents">
		<div class="sub_title">
		    <h1 class="st">
		        <a href="/list">
		        	COMMUNITY
		        </a>
		    </h1>
		</div><!--sub_title-->
		
		<div class="bd_search">
		    <div class="bd_sh">
		        <form id="actionForm" action="/list" method="get">
		            <fieldset class="bd_field">
		                <legend>검색</legend>
		                <input type="text"  name="keyword" value="${pageMaker.cri.keyword}" id="search_board" class="search_board" title="검색어" placeholder="궁금한 점이 있이면 검색해주세요.">
		                <button type="submit" class="btn_search">
		                    <span class="sch_icon">검색</span>
		                </button>
		            </fieldset>
		            
		            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	    			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		        </form>
		    </div>
		</div><!--bd_search --->
		
		<div class="board_main" >
			<c:if test="${login != null}">
			    <div class="write">
			        <a href="/write">
			            <button class="btn_write">WRITE</button>
			        </a>
			    </div>
		    </c:if>	  
		    <table class="board_list">
		        <thead >
		            <tr class="table_title">
		                <th class="th_Category">카테고리</th>
		                <th class="article_title">제목</th>
		                <th class="th_name">작성자</th>
		                <th class="th_date">작성일</th>
		                <th class="th_view">조회</th>
		            </tr>
		        </thead>
		        <tbody class="bd_tbody"> 
		            <c:forEach items="${list}" var="board">
		            	<c:choose>
			            	<c:when test="${board.category eq '공지사항'}">
				            	<tr class="board_notice">
				            		<th class="bd_notice"><span>${board.category}</span></th>
				            		<th class="bd_title"><a href="/detail?bno=${board.bno}">${board.title}</a></th>
				            		<th class="bd_name">${board.writer}</th>
				            		<th class="bd_date">
				            			<fmt:parseDate value="${board.regdate}" var="dateValue" pattern="yyyy-MM-dd HH:mm:ss"/>
				            			<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
				            		</th>
				            		<th class="bd_view">${board.cnt}</th>
				            	</tr>
			            	</c:when>
			            	<c:otherwise>
				            	<tr>
				            		<th class="bd_Category"><span>[${board.category}]</span></th>
				            		<th class="bd_title"><a href="/detail?bno=${board.bno}">${board.title}</a></th>
				            		<th class="bd_name">${board.writer}</th>
				            		<th class="bd_date">
				            			<fmt:parseDate value="${board.regdate}" var="dateValue" pattern="yyyy-MM-dd HH:mm:ss"/>
				            			<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
				            		</th>
				            		<th class="bd_view">${board.cnt}</th>
				            	</tr>
			            	</c:otherwise>
		            	</c:choose>
		            </c:forEach>
		        </tbody>
		    </table>
		</div><!--board_main-->

		 
		<div class="prev_next">
		    <ul class="inner_next">
	               <c:if test="${pageMaker.prev}">
	                  	<li class="prev paginate_button">
	                  		<a href="${pageMaker.startPage-1}">
	                  			<span >이전</span>
	                  		</a>
	                  	</li>
	               </c:if>	  
		        <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			   		<li class="link_page paginate_button">
			   			<a href="${num}" class="${pageMaker.cri.pageNum == num ? 'on' : 'link_page'}" >${num}</a>
			   		</li>	
		   		</c:forEach> 
		        <c:if test="${pageMaker.next}">
		        	<li class="next paginate_button">
			            <a href="${pageMaker.endPage+1}">
			                <span>다음</span>
			            </a>	
			       </li>
		        </c:if>
		    </ul>
		</div><!--prev_next-->
		
		
	</div><!--contents-->
	
	
        	
</body>
</html>