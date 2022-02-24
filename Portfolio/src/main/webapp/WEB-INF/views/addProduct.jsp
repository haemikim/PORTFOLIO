<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>제품 등록</title>


<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="../resources/css/addProduct.css">
</head>
<body>
   <%@include file="header.jsp"%>
    
    <div id="ap__box">
        <h2>상품 등록</h2>
        
        <div class="ap__in">
	        <form role="form" class="ap__form" action="/addProduct" method="post">
	            <div class="ap__row">
	            	<div class="ap__left">
	            		<p>제품명</p>
	            	</div>
	            	<div class="ap__right">
						<input type="text" name="ptitle" required>           		
	            	</div>
	            </div>
	            <div class="ap__row">
	            	<div class="ap__left">
	            		<p>가격</p>
	            	</div>
	            	<div class="ap__right">
						<input type="text" name="price" required> 원           		
	            	</div>
	            </div>
	            <div class="ap__row">
	            	<div class="ap__left">
	            		<p>이미지</p>
	            	</div>
	            	<div class="ap__right">
						<input type="file" name="uploadFile">           		
	            	</div>
	            </div>
            	<div id="uploadResult">
					<ul>
						
					</ul>
				</div>
	
	            <div class="ap__btns">
	                <button disabled>임시 저장</button>
	                <button>등록</button>
	            </div>
	        </form>
        </div>
    </div>
        

   <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="../resources/js/addProduct.js"></script>
</body>
</html>