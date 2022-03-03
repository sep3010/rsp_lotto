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

      main img{
        margin-top: 1px;
        border-radius: 15px;
      }

      .carousel-caption p{
        color: black;
        margin-bottom: 24%;
        font-size: 5vw;
      }
      
       .carousel-caption a img{
        width: 60px;
        height: 60px;
        position: absolute;
        bottom: 1px;
        left: 97%;
      }
      
      @media screen and (max-width:255px){
           .carousel-caption p{
		        color: black;
		        margin-bottom: 12%;
		        font-size: 4.4vw;
	    	}
       }
      
      @media screen and (min-width:255px) and (max-width:300px){
           .carousel-caption p{
		        color: black;
		        margin-bottom: 17%;
		        font-size: 4.5vw;
	    	}
       }
      
      @media screen and (min-width:300px) and (max-width:399px){
           .carousel-caption p{
		        color: black;
		        margin-bottom: 23%;
		        font-size: 4.5vw;
	    	}
       }
      
      @media screen and (min-width:399px) and (max-width:603px){
           .carousel-caption p{
		        color: black;
		        margin-bottom: 28%;
		        font-size: 4.5vw;
	    	}
       }
      
      @media screen and (min-width:603px) and (max-width:768px){
           .carousel-caption p{
		        color: black;
		        margin-bottom: 26%;
		        font-size: 4.4vw;
	    	}
       }
      
	  
	  @media screen and (min-width:768px) and (max-width:1575px){
           .carousel-caption p{
		        color: black;
		        margin-bottom: 30%;
		        font-size: 4.6vw;
	    	}
       }
      
       @media screen and (min-width:1575px) and (max-width:1800px){
            .carousel-caption p{
		        color: black;
		        margin-bottom: 29%;
		        font-size: 4.8vw;
		    }
        }
        
      @media screen and (min-width:1801px) {
            .carousel-caption p{
		        color: black;
		        margin-bottom: 28%;
		        font-size: 4vw;
		    }
        }  	
      

    </style>
  </head>
  <body>
    <%
  		Lotto lotto = new Lotto();
  		pageContext.setAttribute("lotto", lotto.getLottoNum());
  	%>
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
    <main class="container text-center">
      <div id="mycarousel" class="carousel carousel-dark slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="item active">
            <img src="img_lotto/paper_lotto.jpg" alt="" class="w-100">
               <div class="carousel-caption">
               	  <c:set var="count" value="0"/> 
               	  <p>	
                  <c:forEach var="lotto" items="${lotto}">
                  	<c:set var="count" value="${count + 1}"/>
                  	
                  	<c:if test="${count != 7}">
						${lotto}&nbsp
					</c:if>
			
					<c:if test="${count == 7}">
						<br>+ ${lotto}
					</c:if>
										
	 			  </c:forEach>
	 			  </p>
	 			  <a class="nav-link active p-0" href="lotto_number.jsp"><img src="img_lotto/reset.png" alt=""></a>
               </div>
            </div>
        </div>
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