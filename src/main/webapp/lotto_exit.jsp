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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>돌아가세요</title>
<style>
    body{
        font-family: 'Dongle', sans-serif;
        background-image: url(img_lotto/money_rain.gif);
        background-size: cover;
        height: 100vh;
      }

    img{
        width: 20%;
        margin-top: 50vh;
        margin-bottom: 10px;
    }

    p img{
        width: 6%;
        margin: 0;
    }

    p{
        font-size: 2em;
        text-shadow: -1px 0 seashell, 0 1px seashell, 1px 0 seashell, 0 -1px seashell;     
    }

      
</style>
</head>
<body>
    <div class="container text-center" id="main">
        <a href="lotto_main.jsp"><img src="img_lotto/door.png" alt=""></a>
        <p class="mb-1">다시 돌아가서 로또 번호 받으세요.</p>
        <p class="mb-3"><a class="nav-link" href="rsp_game.jsp" style="color: black;">아니면 가위바위보 게임이라도 한판?  <img src="img_lotto/rsp.png" alt=""></a></p>       
    </div>

    

	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>