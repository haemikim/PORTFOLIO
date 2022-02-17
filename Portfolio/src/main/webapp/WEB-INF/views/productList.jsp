<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CAKE</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="../resources/css/productList.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js">
    </script>
    <script type="text/javascript" src="../resources/js/productList.js"></script>
    
</head>
<body>
  <div id="wrap">
	<%@include file="header.jsp"%>

    <div id="product_contents">   

      <div class="product_top">
        <div class="p_title">
          <h1 class="pt">
              <a href="productList.html">
                  CAKE
              </a>
          </h1> <!--pt-->
        </div><!--p_title-->

        <div class="pd_sh">        
          <form id="actionForm3" action="/productList" method="get">
              <fieldset class="pd_field">
                  <legend>검색</legend>
                  <input type="text" name="keyword" value="${pageMaker.cri.keyword}" id="search_product" class="search_product" title="검색어">
                  <button type="submit" class="btn_search">
                      <span class="sch_icon">검색</span>
                  </button>
              </fieldset>
              
            <input type="hidden" name="order" value="${pageMaker.cri.order}">
            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	    	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	    	
          </form>
        </div><!--pd_sh-->

      </div><!--product_top-->


      <div class="product_main">
      	<c:if test="${login.id == 'administrator1'}">
		   <div class="Pmore">
		        <a href="/addProduct">
		            <button class="btn_Pmore">상품추가</button>
		        </a>
		    </div>
   		 </c:if> 
      
        <div class="search_info">
          <select id="array">
            <option value="NO" <c:out value="${pageMaker.cri.order eq 'NO'?'selected':''}" /> >:: 상품 정렬 ::</option>
            <option value="N" <c:out value="${pageMaker.cri.order eq 'N'?'selected':''}" />>신상품순</option>
            <option value="H" <c:out value="${pageMaker.cri.order eq 'H'?'selected':''}" />>높은가격순</option>
            <option value="L" <c:out value="${pageMaker.cri.order eq 'L'?'selected':''}" />>낮은가격순</option>
            <option value="G" <c:out value="${pageMaker.cri.order eq 'G'?'selected':''}" />>가나다순</option>
          </select>
        </div>
        
        <ul class="prd_list">
	        <c:forEach items="${productList}" var="List">
	           <li class="">                     
	               <div class="prdImg">
	                   <a href="">
	                       <img src="/display?fileName=${List.uploadPath}/${List.uuid}_${List.fileName}" id="" alt=""/>
	                   </a>
	               </div>
	               <div class="description">
	                   <div class="info"> 
	                       <a href="">
	                           <p>${List.ptitle}</p>
	                       </a>
	                       <p class="price">${List.price}</p>
	                   </div>
	               </div>
	           </li>
			</c:forEach>
        </ul>
        
		
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

      </div><!--product_main-->



          

    </div> <!--product_contents-->
  </div> <!--#wrap-->
</body>
</html>