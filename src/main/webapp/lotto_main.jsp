<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
    <title>로또 랜덤 번호 생성기</title>
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

      h3{
        color: black;
        font-size: 65px;
      }

      .nav a{
        font-size: 35px;
        color: #3caa92;
      }

      .nav img{
        width: 30px;
        margin: 5px;
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
    <main class="container mt-4">
      <div class="row justify-content-center">
    
        <!--글-->       
        <div class="col-sm-10 col-md-6 text-center align-self-center mb-4 px-0">
          <h3>어서오세요.</h3>
          <h3>무엇을 도와드릴까요?</h3>
          <nav class="nav flex-column">
            <a class="nav-link active" href="lotto_number.jsp"><img src="img_lotto/lotto2.png" alt="">로또 번호 만들어주세요!</a>
            <a class="nav-link" href="lotto_hit_num.jsp">회차별 당첨 번호를 알려주세요.<img src="img_lotto/money.png" alt=""></a>
            <a class="nav-link" href="lotto_exit.jsp"><img src="img_lotto/say-no.png" alt="">다 필요없어!</a>
          </nav>
        </div>

        <!--점원 이미지-->
        <img src="img_lotto/lottery.png" alt="" class="col-sm-8 col-md-6 p-4">
          
      </div>
    </main>


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