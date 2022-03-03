<%@page import="edu.kosmo.ex.rsp.RSPGame"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		RSPGame rspGame = new RSPGame(request.getParameter("yrsp"));
		
		String result = rspGame.playRsp();
		String korYrsp = rspGame.getKorYrsp();
		String comRsp = rspGame.getComRsp();
		
		request.setAttribute("result", result);
		request.setAttribute("korYrsp", korYrsp);
		request.setAttribute("comRsp", comRsp);
	%>

	<% //콘솔창에서 확인을 위한 코드
		System.out.println(result);
		System.out.println("유저: " + korYrsp);
		System.out.println("컴퓨터: " + comRsp);
		System.out.println("========================");
	%>

	<c:if test="${result == '당신이 이겼습니다.'}">
		<jsp:forward page="rsp_win.jsp"/>
	</c:if>
	
	<c:if test="${result == '당신이 졌습니다.'}">
		<jsp:forward page="rsp_lose.jsp"/>
	</c:if>
	
	<c:if test="${result == '비겼습니다.'}">
		<jsp:forward page="rsp_draw.jsp"/>
	</c:if>


</body>
</html>