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

      .lead{
          font-size: 1.8em;
      }
    
      .carousel-control-next-icon:after
      {
        content: '>';
        font-size: 60px;
        color: #f186a4;
      }

      .carousel-control-prev-icon:after {
        content: '<';
        font-size: 60px;
        color: #f186a4;
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

<!--제목 소개-->
<div class="mt-4 text-center">
  <h1 class="display-3">가위바위보 게임</h1>
  <p class="lead">가위, 바위, 보 중 무엇을 낼지 결정하고 '도전' 버튼을 누르세요.<br>
  행운을 빕니다!</p>
</div>
<form action="rsp_result.jsp" method="get">
<div class="container px-5">
  <div class="row">

    <!--가위바위보 캐라셀-->
    
    <div class="col-md-5 clo-sm-5 mb-3 text-center">
      <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-ride="carousel" data-interval="2500"> 
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
         
          <!--가위-->
          <div class="carousel-item active">
            <img class="d-block w-100 rounded p-5" src="img_rsp/sciss.png" alt="First slide">          
            <div class="row px-3">
                <div class="d-grid gap-2 col-6 mx-auto">
                <input type="radio" class="btn-check" value="scissors" name="yrsp" id="rsp1" autocomplete="off">
                <label class="btn btn-outline-warning p-0 m-0" for="rsp1" style="font-size: 1.5em;">'가위'로</label>
                </div>
                <div class="d-grid gap-2 col-6 mx-auto">
                <input type="submit" class="btn-check" id="info" autocomplete="off">
                <label class="btn btn-info p-0 m-0" for="info" style="font-size: 1.5em;">도전</label>
                </div>
            </div>
          </div>

          <!--바위-->
        <div class="carousel-item">
          <img class="d-block w-100 rounded p-5" src="img_rsp/rock.png" alt="Second slide">
          <div class="row px-3">
            <div class="d-grid gap-2 col-6 mx-auto">
            <input type="radio" class="btn-check" value="rock" name="yrsp" id="rsp2" autocomplete="off">
            <label class="btn btn-outline-warning p-0 m-0" for="rsp2" style="font-size: 1.5em;">'바위'로</label>
            </div>
            <div class="d-grid gap-2 col-6 mx-auto">
            <input type="submit" class="btn-check" id="info" autocomplete="off">
            <label class="btn btn-info p-0 m-0" for="info" style="font-size: 1.5em;">도전</label>
            </div>
        </div>
        </div>

        <!--보-->
        <div class="carousel-item">
          <img class="d-block w-100 rounded p-5" src="img_rsp/paper.png" alt="Third slide">
          <div class="row px-3">
            <div class="d-grid gap-2 col-6 mx-auto">
            <input type="radio" class="btn-check" value="paper" name="yrsp" id="rsp3" autocomplete="off">
            <label class="btn btn-outline-warning p-0 m-0" for="rsp3" style="font-size: 1.5em;">'보'로</label>
            </div>
            <div class="d-grid gap-2 col-6 mx-auto">
            <input type="submit" class="btn-check" id="info" autocomplete="off">
            <label class="btn btn-info p-0 m-0" for="info" style="font-size: 1.5em;">도전</label>
            </div>
        </div>
        </div>
      </div>

	 <!-- 캐라셀 좌우 화살표 버튼 -->	
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

</div>
</form>

  <!--vs 글자-->
  <div class="col-md-2 clo-sm-6 align-self-center text-center">
    <h1 style="font-weight: bold; font-size: 3.5em; color: #7ca39b;">VS</h1>
  </div>

  <!--컴퓨터-->
  <div class="col-md-5 clo-sm-5 align-self-center">   
    <img class="d-block w-100 rounded p-5" src="img_rsp/com.png" alt="">  
  </div>

 <!--저작권 표시-->
 <div class="container">
    <hr class="m-0">

    <footer class="mt-1">
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