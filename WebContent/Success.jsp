<%@ page language="java" contentType="text/html"%>
<%@ include file="CommonHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div style="background-color:green">
	<h4>Welcome : ${requestScope.loginId}</h4>


	<%
		String loginId=(String)request.getAttribute("loginId");
		out.println("--Using Scriplet Welcome : "+loginId);
	%>
</div>
<h2 align="center">Successfully Logged in</h2>

</body>
</html>