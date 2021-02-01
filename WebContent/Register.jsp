<%@ page language="java" contentType="text/html"%>
<%@ include file="CommonHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Here</title>
</head>
<body>
<br/><br/><br/>


<div class="container">
<div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Register</div>
                            <div class="card-body">

                                <form class="form-horizontal" method="post" action="RegisterController">

                                    <div class="form-group">
                                        <label for="customerName" class="cols-sm-2 control-label">Your Name</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="customerName" id="customerName" placeholder="Enter your Name" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="emailid" class="cols-sm-2 control-label">Your Email</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                                <input type="email" class="form-control" name="emailid" id="emailid" placeholder="Enter your Email" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="loginId" class="cols-sm-2 control-label">Username</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="loginId" id="loginId" placeholder="Enter your Username" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="passwd" class="cols-sm-2 control-label">Password</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="password" class="form-control" name="passwd" id="passwd" placeholder="Enter your Password" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="password" class="form-control" name="confirm" id="confirm" placeholder="Confirm your Password" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="mobileNo" class="cols-sm-2 control-label">Mobile</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="mobileNo" id="mobileNo" pattern="[789]\d{9}" placeholder="Enter your Mobile No" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="addr" class="cols-sm-2 control-label">Address</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <textarea cols="30" rows="5" class="form-control" name="addr" id="addr" placeholder="Enter your Address"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="country" class="cols-sm-2 control-label">Country</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <select class="form-control" name="country">
													<option value="India">India</option>
													<option value="Sri Lanka">Sri Lanka</option>
													<option value="Bangladesh">Bangladesh</option>
													<option value="Australia">Australia</option>
												</select>
                                            </div>
                                        </div>
                                    </div>       
                                    <div class="form-group ">
                                       <!--  <button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button> -->
                                        <input type="submit" value="Sign Up"/>
                                    </div>
                                    <div class="login-register">
                                        <a href="Login.jsp">Login</a>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
</div>

<!--

<form action="RegisterController" method="post">
<table>
<tr bgcolor="gray">
<td colspan="2">
<h2>
<font face="monotype corsiva" color="blue" size="10">Sign Up Here</font>
</h2>
</td>
</tr>
<tr bgcolor="gray">
<td colspan="2">
<h2>
<font face="monotype corsiva" color="red" size="10">${ErrorInfo}</font>
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
<tr>
<td>Customer Name</td>
<td><input type="text" name="customerName" required/></td>
</tr>
<tr>
<td>Email Id</td>
<td><input type="email" name="emailid" required/></td>
</tr>
<tr>
<td>Mobile</td>
<td><input type="text" name="mobileNo" pattern="[789]\d{9}" placeholder="Enter mobile no of 10 digits" required/></td>
</tr>
<tr>
<td>Address</td>
<td><textarea cols="30" rows="5" name="addr"></textarea></td>
</tr>
<tr>
<td>Country</td>
<td><select name="country">
<option value="India">India</option>
<option value="Sri Lanka">Sri Lanka</option>
<option value="Bangladesh">Bangladesh</option>
<option value="Australia">Australia</option>
</select></td>
</tr>
<tr bgcolor="gray">
<td colspan="2">
<input type="submit" value="Sign Up"/>
</td>
</tr>
</table>
</form>
-->

</body>
</html>