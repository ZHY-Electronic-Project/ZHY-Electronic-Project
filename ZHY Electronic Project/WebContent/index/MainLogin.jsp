<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet">
<link  rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
<title> 电子化巡检系统 </title>

<style type="text/css">
h1{text-align:center;color:red;}
h2{text-align:center;color:blue;}
a{text-decoration:none;font-size:40px;color:black;}
a:hover{text-decoration:underline;font-size:24px;color:black;}
     body{    
        background-image: url(../image/1.jpg);    
        background-size:cover;  
     }
          body{
margin:0 auto;
position:absolute;
	top:20%;
	left:0;
	right:0;
	bottom:0;
	margin:auto;
	text-align:center;
}    
</style>
</head>
<body>
 <h1><span class="heading">ZHY</span></h1>
 <h2>Electronic Operation and Maintenance / Inspection System</h2>
<div class="container">
    <div class="row=1">
        <div class="col-md-offset-3 col-md-6">
        <form class="form-horizontal">
        <br>
        <h2>Login Page</h2>
            <div class="form-group">
            <br>

            <i class="fa fa-user"></i>
            <button onclick="window.open('../index/AdminLogin.jsp')"><strong>管理员登录</strong></button>
            </div>
            <br>
        <div class="form-group">
        <i class="fa fa-user"></i>
        <button onclick="window.open('../index/UserLogin.jsp')">用户登录</button>
        </div>
        </div>
        </form>
        </div>
        
</div>
</body>
</html>