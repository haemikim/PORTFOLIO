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
    <link rel="stylesheet" href="../resources/css/hallOfFame.css">
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
              <a href="hallOfFame.html">
                  HALL OF FLAM
              </a>
          </h1> <!--pt-->
        </div><!--p_title-->

      <!-- 보고 a 태그에 바로 주소집어넣는 형식 사용하기 -->
          <form id="actionForm3" action="/productList" method="get">
                        
            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	    	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">	    	
          </form>


      </div><!--product_top-->


      <div class="product_main">
      	<c:if test="${login != null}">
		   <div class="Rmore">
		        <a href="/addProduct">
		            <button class="btn_Rmore">리뷰추가</button>
		        </a>
		    </div> 
   		 </c:if>
		    
        <ul class="bs_review">
	        <c:forEach items="${hallOfFame}" var="List">
			    <li class="inner_re">           
			            <div class="prdImg">
			                <a href="">
			                    <img src="./img/review01.jpg" id="" alt=""/>
			                </a>
			            </div>
			            <div class="description">                                
			                <div class="info">
			                    <a href="">
			                        <p>나만의 커스텀 케이크</p>
			                    </a>
			                    <p class="re_txt">review</p>
			                    <p class="r_txt">정말 미치도록 귀여워서 받자마자 앉아서 으스러트릴뻔했어요;</p>
			                </div>
			                <div class="counteraction">
			                    <ul>
			                        <li class="like">
			                            <span>LIKE</span>
			                            <span>0</span>
			                        </li>
			                        <li class="view">
			                            <span>VIEW</span>
			                            <span>0</span>
			                        </li>
			                    </ul>
			                </div>
			            </div><!--.description-->
			    </li><!--.inner_re-->
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