<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<style type="text/css">
	.booking {
		text-align: center;
	}
	
	.thumb-image {
		width: 210px;
		height: auto;
		margin: 20px;
		
	}
	
	.box-contents{
		padding-left: 20px;
		padding-right: 20px;
		padding-bottom: 50px;
	}
	
	li{
		margin-left: 20px;
		margin-: 20px;
		margin-left: 20px;
		margin-left: 20px;
		float: left;
	}
</style>
</head>
<body>
<div class="page-body">
	<jsp:include page="../top.jsp"></jsp:include>
		<div class="main-context">
			<div id="chartTitle">
				<h2>Movie Chart</h2>
				<hr>
			</div>
			<div>
				<ol>
            
                <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">
                            <strong class="title">콜드 워</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율: <span>22.5%</span></strong>
                            
                        </div>
                        <span class="txt-info">
                            <strong>
                                2019.01.23 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <br>
                        <span class="like"> 
                            <span class="count"> 
                                <strong class="recommend">추천수: <i>2000</i></strong>&nbsp;&nbsp;
                            </span>
                            <button class="btn-like" value="81552">영화 추천</button>
                        </span>
                        <br>
                        <div class="booking">
                        <a class="link-reservation" href="#">예매</a>
                        </div>
                    </div>    
                </li>
          		
          		<!-- --------------------------------------------------------------------------- -->
          		
          		<li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">
                            <strong class="title">콜드 워</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>22.5%</span></strong>
                            <strong class="recommend">추천수<span>2000</span></strong>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2019.01.23 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <br>
                        <span class="like"> 
                            <button class="btn-like" value="81552">영화 추천</button>
                            <span class="count"> 
                                <strong><i>17,477</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                        </span>
                        <br>
                        <a class="link-reservation" href="/ticket/?MOVIE_CD=20018408&MOVIE_CD_GROUP=20018408">예매</a>
                    </div>    
                </li>
                
                <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">
                            <strong class="title">콜드 워</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>22.5%</span></strong>
                            <strong class="recommend">추천수<span>2000</span></strong>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2019.01.23 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <br>
                        <span class="like"> 
                            <button class="btn-like" value="81552">영화 추천</button>
                            <span class="count"> 
                                <strong><i>17,477</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                        </span>
                        <br>
                        <a class="link-reservation" href="/ticket/?MOVIE_CD=20018408&MOVIE_CD_GROUP=20018408">예매</a>
                    </div>    
                </li>
                
                <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">
                            <strong class="title">콜드 워</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>22.5%</span></strong>
                            <strong class="recommend">추천수<span>2000</span></strong>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2019.01.23 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <br>
                        <span class="like"> 
                            <button class="btn-like" value="81552">영화 추천</button>
                            <span class="count"> 
                                <strong><i>17,477</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                        </span>
                        <br>
                        <a class="link-reservation" href="/ticket/?MOVIE_CD=20018408&MOVIE_CD_GROUP=20018408">예매</a>
                    </div>    
                </li>
                
            </ol>

            <ol>
            
            	<li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">
                            <strong class="title">콜드 워</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>22.5%</span></strong>
                            <strong class="recommend">추천수<span>2000</span></strong>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2019.01.23 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <br>
                        <span class="like"> 
                            <button class="btn-like" value="81552">영화 추천</button>
                            <span class="count"> 
                                <strong><i>17,477</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                        </span>
                        <br>
                        <a class="link-reservation" href="/ticket/?MOVIE_CD=20018408&MOVIE_CD_GROUP=20018408">예매</a>
                    </div>    
                </li>
                
                <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">
                            <strong class="title">콜드 워</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>22.5%</span></strong>
                            <strong class="recommend">추천수<span>2000</span></strong>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2019.01.23 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <br>
                        <span class="like"> 
                            <button class="btn-like" value="81552">영화 추천</button>
                            <span class="count"> 
                                <strong><i>17,477</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                        </span>
                        <br>
                        <a class="link-reservation" href="/ticket/?MOVIE_CD=20018408&MOVIE_CD_GROUP=20018408">예매</a>
                    </div>    
                </li>
                
                <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">
                            <strong class="title">콜드 워</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>22.5%</span></strong>
                            <strong class="recommend">추천수<span>2000</span></strong>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2019.01.23 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <br>
                        <span class="like"> 
                            <button class="btn-like" value="81552">영화 추천</button>
                            <span class="count"> 
                                <strong><i>17,477</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                        </span>
                        <br>
                        <a class="link-reservation" href="/ticket/?MOVIE_CD=20018408&MOVIE_CD_GROUP=20018408">예매</a>
                    </div>    
                </li>
                
                <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">
                            <strong class="title">콜드 워</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>22.5%</span></strong>
                            <strong class="recommend">추천수<span>2000</span></strong>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2019.01.23 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <br>
                        <span class="like"> 
                            <button class="btn-like" value="81552">영화 추천</button>
                            <span class="count"> 
                                <strong><i>17,477</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                        </span>
                        <br>
                        <a class="link-reservation" href="/ticket/?MOVIE_CD=20018408&MOVIE_CD_GROUP=20018408">예매</a>
                    </div>    
                </li>
            
            </ol>

			</div>
		</div><!-- main-context 끝 -->
	<jsp:include page="../bottom.jsp"></jsp:include>
</div><!-- page-body 끝 -->
</body>
</html>
