<%@page import="edu.kosmo.ex.rsp.RSPGame"%>
<%@page import="org.apache.tomcat.util.http.fileupload.RequestContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/b7ee8a4337.js" crossorigin="anonymous"></script>

<!--웹 폰트-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
<title>가위바위보 게임</title>

<style>
    body{
        font-family: 'Dongle', sans-serif;
      }

      .navbar{
        border-radius: 10px;
        margin-top: 10px;
        background-color: #f186a4;
      }

      .navbar-brand{
        font-size: 2.5em;
      }

      .nav-item{
        font-size: 2em;
      }

      .navbar img{
        width: 45px;
        margin: 0 10px 0 20px;
      }

      .btn{
          font-size: 1.8em;
      }
      
      .card{
        border: 0.1px solid #a1d3c8;
        border-radius: 15px;
    }
      
      .card-title{
          font-size: 2em;
      }
      
      .card-text{
      	font-size: 1.8em;
      }
      
      
</style>
</head>

<body>

  <!--상단 메뉴바-->
  <header class="container">
    <nav class="navbar navbar-expand-lg navbar-dark">
      <a href="lotto_main.jsp"><img src="img_lotto/lotto.png" alt=""></a>
      <a class="navbar-brand" href="lotto_main.jsp">로또 번호 생성기</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    
      <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="lotto_intro.jsp">Introduce<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="rsp_game.jsp">가위바위보 게임</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="lotto_develop.jsp">Developer</a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  
  <!-- 메인 -->
  <div class="container">
    <div class="row justify-content-center">
        <div class="text-center col-md-5 col-sm-6 col-8 p-2 my-3">
            <img src="img_rsp/lose.png" alt="" class="w-75">
            <h1 class="display-3 my-1">당신이 졌습니다!</h1>
            <!--재도전 버튼-->
            <a class="btn btn-outline-info py-0" href="rsp_game.jsp" role="button">재도전?</a>
        </div>
        
        <!--결과 카드-->
    	<div class="col-md-5 col-sm-6 col-5 align-self-center">
        <div class="card-group text-center">
        	<!-- 유저 -->
            <div class="card">
            	
            	<c:if test="${korYrsp == '보'}">
            		<img src="img_rsp/black_paper.png" class="card-img-top" alt="">
            	</c:if>
            	
            	<c:if test="${korYrsp == '가위'}">
            		<img src="img_rsp/black_sicssor.png" class="card-img-top" alt="">
            	</c:if>
            	
            	<c:if test="${korYrsp == '바위'}">
            		<img src="img_rsp/black_rock.png" class="card-img-top" alt="">
            	</c:if>
            	              
                <div class="card-body p-1">
                    <h5 class="card-title m-0">유저</h5>
                    <p class="card-text">${korYrsp}</p>
                </div>
            </div>
            
            <!-- 컴퓨터 -->
            <div class="card">
            	<c:if test="${comRsp == '보'}">
            		<img src="img_rsp/black_paper.png" class="card-img-top" alt="">
            	</c:if>
            	<c:if test="${comRsp == '가위'}">
            		<img src="img_rsp/black_sicssor.png" class="card-img-top" alt="">
            	</c:if>
            	<c:if test="${comRsp == '바위'}">
            		<img src="img_rsp/black_rock.png" class="card-img-top" alt="">
            	</c:if>
            	
                <img src="black_rock.png" class="card-img-top" alt="">
                <div class="card-body p-1">
                    <h5 class="card-title m-0">컴퓨터</h5>
                    <p class="card-text">${comRsp}</p>
                </div>
            </div>
        	</div>
    	</div>  
    </div> 
    
  
 <!--저작권 표시-->
 <div class="container">
    <hr class="m-0">

    <footer class="mt-1">
      <P class="text-center">&copy;2021. 박소은 all rights reserved.</P>
    </footer>
  </div>


  	</div>
 	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>