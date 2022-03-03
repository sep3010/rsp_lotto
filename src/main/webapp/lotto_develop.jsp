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
    <title>R.I.P</title>
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

      #back{
        border-radius: 20px;
        background-color: #090e5a;
        background-image: linear-gradient(180deg, #090e5a 16%, #5788ce 75%, #f9ba87 100%);

      }  

      main .container{
        position: absolute;        
      }
      
      main :nth-child(3){
        width: 40%;
      }

      main :nth-child(4){
        width: 12%;
        position: relative;
        top: 9em;
        left: 20%;
        animation-name: prey;
        animation-duration: 4s;
        animation-direction: normal;
        animation-iteration-count: infinite;
      }

      main p{
        color: rgb(250, 245, 245);
        font-size: 4vw;
      }

      @keyframes prey {
        from {
          left: 20%;
        }

        to {
          left: -20%;
        }
      }

      @media screen and (max-width:1199px){
          main img:nth-child(4){
            width: 12%;
            position: relative;
            top: 5em;
            left: 20%;
        }
      }

      @media screen and (max-width:767px){
          main img:nth-child(4){
            width: 12%;
            position: relative;
            top: 3em;
            left: 20%;
        }
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
              <a class="nav-link active" href="lotto_develop.jsp">Developer</a>
            </li>
          </ul>
        </div>
      </nav>
    </header>

    <!--메인-->
    <main class="container">
      <div id="back" class="pt-5 text-center">
        <p>이 홈페이지를 만들고 개발자는 장렬히 사망했습니다...</p>
        <p>따라서 더 이상의 업데이트는 이루어지지 않습니다.</p>
        <img src="img_lotto/grave.png" alt="" class="mt-4">
        <img src="img_lotto/bouquet.png" alt="">
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