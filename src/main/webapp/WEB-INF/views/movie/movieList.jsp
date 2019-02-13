<%@page import="com.itbank.artHouse.movie.MovieDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<style type="text/css">
	.booking {
		text-align: left;
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
	<jsp:include page="../../../top.jsp"></jsp:include>
		<div class="main-context">
			<div id="chartTitle">
				<h2>Movie Chart</h2>
				<hr>
			</div>
			<div>
                <c:forEach var="dto" items="${movieList }">	
				<ol>
            
                <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">
                            	<strong class="title">${dto.title }</strong>
                            </c:forEach>
                        </a>

                        <div class="score">
                            <strong class="percent">관객수: <span>10000</span></strong>
                            
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
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">                 
                            	<strong class="title">영화제목</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">관객수: <span>10000</span></strong>
                            
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
                
                <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">                 
                            	<strong class="title">영화제목</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">관객수: <span>10000</span></strong>
                            
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
                
                <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">                 
                            	<strong class="title">영화제목</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">관객수: <span>10000</span></strong>
                            
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
                
            </ol>

            <ol>
            
            	<li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">                 
                            	<strong class="title">영화제목</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">관객수: <span>10000</span></strong>
                            
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
                
                <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">                 
                            	<strong class="title">영화제목</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">관객수: <span>10000</span></strong>
                            
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
                
               <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">                 
                            	<strong class="title">영화제목</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">관객수: <span>10000</span></strong>
                            
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
                
               <li>
                    <div class="box-image" >
                        <a href="#">
                        	<img class="thumb-image" src="/artHouse/resources/img/movie/M1.jpg"/>
                        </a>
                    </div>
                    
                    <div class="box-contents">
                        <a href="#">                 
                            	<strong class="title">영화제목</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">관객수: <span>10000</span></strong>
                            
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
            
            </ol>

			</div>
		</div><!-- main-context 끝 -->
	<jsp:include page="../../../bottom.jsp"></jsp:include>
</div><!-- page-body 끝 -->
</body>
</html>
