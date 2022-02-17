<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CAKEY</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="../resources/css/home.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
<%@include file="header.jsp" %>
        <div id="container">
            <div class="slider">
                <div class="main_slider">
                    <div class="slide_img"><img src="../resources/img/banner03.jpg" alt=""></div>
                    <div class="slide_img"><img src="../resources/img/banner02.jpg" alt=""></div>
                </div><!--main_slider-->

                <div class="slider_pager"></div>
            </div><!--slider-->

            <div class="best_product">
                <h2 class="p_title">
                    <img src="../resources/img/title_BEST.png" alt="">
                </h2>
                
                <ul class="prd_list">
                    <li class="">                     
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/sellcream_cake.jpg" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">
                            <div class="info"> 
                                <a href="">
                                    <p>쉘크림 케이크</p>
                                </a>
                                <p class="price">19,000WON</p>
                            </div>
                        </div>
                    </li>
                    <li class="">
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/flower_cake.jpg" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">
                            <div class="info"> 
                                <a href="">
                                    <p>플라워 케이크</p>
                                </a>
                                <p>19,000WON</p>
                            </div>
                        </div>
                    </li>
                    <li class="">                       
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/plop_cake.png" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">
                            <div class="info"> 
                                <a href="">
                                    <p>퐁당 케이크</p>
                                </a>
                                <p class="price">19,000WON</p>
                            </div>
                        </div>
                    </li>
                    <li class="">
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/bts_cake.jpg" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">
                            <div class="info"> 
                                <a href="">
                                    <p>버터 케이크</p>
                                </a>
                                <p class="price">19,000WON</p>
                            </div>
                        </div>
                    </li>
                    <li class="">  
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/cherry_cake.jpg" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">
                            <div class="info"> 
                                <a href="">
                                    <p>체리 케이크</p>
                                </a>
                                <p class="price">19,000WON</p>
                            </div>
                        </div>
                    </li>
                    <li class="">                     
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/egg_cake.jpg" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">
                            <div class="info"> 
                                <a href="">
                                    <p>달걀 케이크</p>
                                </a>
                                <p class="price">19,000WON</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div><!--best_product-->
              
            <div class="best_review">
                <h2 class="r_title">
                    <img src="../resources/img/title_hall_of_fame.png" alt="">
                </h2>

                <ul class="bs_review">
                       <li class="inner_re">           
                            <div class="prdImg">
                                <a href="">
                                    <img src="../resources/img/review01.jpg" id="" alt=""/>
                                </a>
                            </div>
                            <div class="description">                                
                                <div class="info">
                                    <a href="">
                                        <p>나만의 커스텀 케이크</p>
                                    </a>
                                    <p class="re_txt">리뷰</p>
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
                    <li class="inner_re">
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/review02.jpg" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">                                
                            <div class="info">
                                <a href="">
                                    <p>나만의 커스텀 케이크</p>
                                </a>
                                    <p class="re_txt">리뷰</p> 
                                    <p class="r_txt">아니 케이크가 이렇게 말랑콩떡 귀여미일수가 있나요 그냥 쓰러져버려</p>
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
                    <li class="inner_re">                      
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/review03.jpg" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">                                
                            <div class="info">
                                <a href="">
                                    <p>나만의 커스텀 케이크</p>
                                </a>
                                    <p class="re_txt">리뷰</p> 
                                    <p class="r_txt">이번년 최고의 지출, 포브스선정 가장 좋은 레터링 케이크집</p>
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
                    <li class="inner_re">                      
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/review04.jpg" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">                                
                            <div class="info">
                                <a href="">
                                    <p>나만의 커스텀 케이크</p>
                                </a>
                                    <p class="re_txt">리뷰</p> 
                                    <p class="r_txt">아니 그냥 진짜 미쳤다라는 말밖에 안나와요 이런 디자인까지 구현해낸다니 그냥 케이크계의 미켈란젤로입니까?</p>
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
                    <li class="inner_re">                    
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/review05.jpg" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">                                
                            <div class="info">
                                <a href="">
                                    <p>나만의 커스텀 케이크</p>
                                </a>
                                    <p class="re_txt">리뷰</p> 
                                    <p class="r_txt">귀여미 세마리가 케이크 위에서 생일축하 하는데 왜 저는 같이 끼어서 할수없게 만들어 놓으신거죠? 이거때문에 불만이네요</p>
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
                    <li class="inner_re">                      
                        <div class="prdImg">
                            <a href="">
                                <img src="../resources/img/review06.jpg" id="" alt=""/>
                            </a>
                        </div>
                        <div class="description">                                
                            <div class="info">
                                <a href="">
                                    <p>나만의 커스텀 케이크</p>
                                </a>
                                    <p class="re_txt">리뷰</p> 
                                    <p class="r_txt">와씨 너무 귀엽지만 맛까지 잡아 버린다고요? 헐레벌떡 퍼먹다가 뒤늦게 사진 안찍은게 생각나서 좌절좀하고 찍어 봤습니다 진짜 최고의 케이크</p>
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
                    
                </ul>
            </div><!--best_review-->
        </div><!--#container-->
</body>
</html>