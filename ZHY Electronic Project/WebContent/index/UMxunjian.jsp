<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.java.dao.impl.UserDaoImpl,com.java.model.User,com.java.dao.UserDao,java.util.List"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
        <script type="text/javascript"></script>
</head>
<body>
<div class="contect">
<table class="table table-hover" >
			<thead bgcolor="#92B8B1">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Actions</th>
					<th>
						<div class="col-sm-3 actionBar" style="width:100px;"><!--搜索框-->
							<div class="input-group">
								<input type="text" class="search-field form-control"  style="width:150px;" placeholder="搜索">
							</div>
							</div>
					</th>
				</tr>
			</thead>
			<tr>
              <td>1</td>
              <td>月度巡检</td>
              <td>
                   <button class="btn btn-primary">开始</button></a>
              </td> 
              <td></td>     
          </tr>
		</table>
		<!-- 分页标签 -->
					<div id="inspecion-table-footer" class="bootgrid-footer container-fluid" style="text-align: center;">
						<div class="row">
						<div class="col-sm-6">
						
							<ul class="pagination">
								<li class="first disabled" aria-disabled="true">
									<a href="#first" class="button">«</a>
								</li>
								<li class="prev disabled" aria-disabled="true">
									<a href="#prev" class="button">&lt;</a>
								</li>
								<li class="page-1 active" aria-disabled="false" aria-selected="true">
									<a href="#1" class="button">1</a>
								</li>
								<li class="page-2" aria-disabled="false" aria-selected="false">
									<a href="#2" class="button">2</a>
								</li>
								<li class="next" aria-disabled="false">
									<a href="#next" class="button">&gt;</a>
								</li>
								<li class="last" aria-disabled="false">
									<a href="#last" class="button">»</a>
								</li>
							</ul>
					    
						</div>
						</div>
				    </div>
</div>
</body>
</html>