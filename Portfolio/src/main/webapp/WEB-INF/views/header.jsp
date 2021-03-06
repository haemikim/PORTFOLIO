<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../resources/js/header.js"></script>
   	<div id="wrap">
        <div id="header">
            <div class="header_in">
                <h1 class="logo">
                    <a href="home">cakey로고</a>
                    <input type="hidden" id="login" value="${login}">
                </h1>
                <div class="copyright">COPYRIGHT © KIM-HAEMI. ALL RIGHT RESERVED.</div>
                <ul class="utill">
                   <c:if test="${login==null}">
                   	 <li><a href="/join">JOIN</a></li>
                     <li><a href="/login">LOGIN</a></li>
                   </c:if>
                   <c:if test="${login!=null}">                                    
                      <li><a href="/logout">LOGOUT</a></li>
                	</c:if>                
                   <li class="cart">
                   		<a href="/cart">CART</a>
                   </li>
                </ul><!--.utill-->
                <ul class="gnb">
                    <li><a href="/productList">CAKE</a></li>
                    <li><a href="/hallOfFame">명예의 전당</a></li>
                    <li><a href="/list">COMMUNITY</a></li>
                </ul><!--.gnb-->

            </div><!--.header_in-->
        </div><!--#header-->
    </div><!-- wrap -->

    