<%@ page language="java" contentType="text/html"%>
<%@ include file="CommonHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="login.css">
<title>Login Page</title>
</head>
<body>


<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
     <!--   <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />-->
      <h2>Log In Here</h2>
    </div>

    <!-- Login Form -->
    <form action="LoginController" method="post">
      <input type="text" id="login" class="fadeIn second" name="loginId" placeholder="Login Id" required/>
      <input type="password" id="password" class="fadeIn third" name="passwd" placeholder="password" required/>
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="Register.jsp">New User? Register Here</a>
    </div>

  </div>
</div>

<!--
<form action="LoginController" method="post">
<table>
<tr bgcolor="gray">
<td colspan="2">
<h2>
<font face="monotype corsiva">Sign In Here</font>
</h2>
</td>
</tr>
<tr>
<td>Login</td>
<td><input type="text" name="loginId" required/></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="passwd" required/></td>
</tr>
<tr bgcolor="gray">
<td colspan="2">
<input type="submit" value="Login"/>
</td>
</tr>
</table>
</form>

-->
</body>
</html>