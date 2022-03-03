<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashSet"%>
<%@page import="edu.kosmo.ex.lotto.Lotto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!--웹 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
    <title>화차별 로또 당첨 번호</title>
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
        margin: 0 10px;
      }

      .carousel-control-next-icon:after
      {
        content: '>';
        font-size: 55px;
        color: #f186a4;
      }

      .carousel-control-prev-icon:after {
        content: '<';
        font-size: 55px;
        color: #f186a4;
      }

      #link a{
        font-size: 4vw;
        color: rgb(255, 197, 5);
      }

      #link img{
        width: 4vw;
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
              <a class="nav-link" href="rsp_game.jsp">가위바위보 게임</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="lotto_develop.jsp">Developer</a>
            </li>
          </ul>
        </div>
      </nav>
    </header>

    <!--메인-->
    <div class="container mt-3">
      <div id="carouselExampleIndicators" class="carousel slide w-75 m-auto" data-ride="carousel" data-interval="2000">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100 rounded" src="img_lotto/first.jpg" alt="">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100 rounded" src="img_lotto/secound.jpg" alt="">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100 rounded" src="img_lotto/third.jpg" alt="">
          </div>
          <div class="carousel-item rounded">
            <img class="d-block w-100" src="img_lotto/four.jpg" alt="">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>

    <!--외부 사이트 링크-->
    <div class="text-center" id="link">
    <a class="nav-link" href="https://dhlottery.co.kr/gameResult.do?method=byWin" target="blank">자세한 당첨 정보는 여기로<img src="img_lotto/click.png" alt=""></a>
    </div>  

    <!--저작권 표시-->
    <div class="container">
      <hr>

      <footer>
        <P class="text-center">&copy;2021. 박소은 all rights reserved.</P>
      </footer>
    </div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>